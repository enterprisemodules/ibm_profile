RSpec.configure do |c|
  c.mock_with :rspec
end

require 'puppetlabs_spec_helper/module_spec_helper'
require 'puppetlabs_spec_helper/puppet_spec_helper'
require 'beaker-rspec/spec_helper'
require 'beaker/puppet_install_helper'
require 'beaker/module_install_helper'
require 'easy_type_helpers/acceptance'
Dir["./spec/support/acceptance/**/*.rb"].sort.each { |f| require f }

unless ENV['RS_PROVISION'] == 'no'
  run_puppet_install_helper
  install_ca_certs unless ENV['PUPPET_INSTALL_TYPE'] =~ %r{pe}i

  hosts.each do |host|
    on host, 'rm -rf /etc/puppetlabs/code/environments/production/modules'
    on host, 'mkdir /etc/puppetlabs/code/environments/production/modules'
    on host, "mkdir -p #{host['distmoduledir']}"
  end
end

RSpec.configure do |c|
  # Project root
  proj_root = File.expand_path(File.join(File.dirname(__FILE__), '..'))

  # Readable test descriptions
  c.formatter = :documentation
  c.order     = :defined
  c.mock_with :rspec
  c.include Helpers
  # Copy module root and easy_type to docker container
  c.before :suite do
    # em_license_file = ENV['EM_LICENSE_FILE']
    # fail 'You neeed to set $EM_LICENSE_FILE' if em_license_file.nil?
    em_license_file = '/software/Universal.entitlements'
    on(master, "cp #{em_license_file} /etc/puppetlabs/puppet/")
    copy_module_to(master, :source => proj_root,
                           :ignore_list => ['software', 'log', 'junit'],
                           :target_module_path => '/etc/puppetlabs/code/environments/production/modules',
                           :module_name => 'ibm_profile')
    # Now we don't use hiera any more. This code is needed when we want to use hiera to specify any stuff
    # on(master, "mkdir -p /etc/puppetlabs/puppet/data")
    # scp_to(master, "#{proj_root}/spec/hiera.yaml",'/etc/puppetlabs/puppet/hiera.yaml',  )
    # scp_to(master, "#{proj_root}/spec/acceptance_hiera_data.yaml",'/etc/puppetlabs/puppet/data')
    #
    # Install required modules
    #
    modules = [
      'saz-limits',
      'herculesteam-augeasproviders_sysctl',
      'enterprisemodules-easy_type',
      'enterprisemodules-wls_install',
      'enterprisemodules-wls_config',
      'puppetlabs-stdlib',
      'ipcrm-echo',
      'puppet-archive',
      'herculesteam-augeasproviders_core',
      'herculesteam-augeasproviders_sysctl',
      'saz-limits',
      'puppetlabs-firewall',
      'crayfishx-firewalld',
      'fiddyspence-sleep',
      'biemond-jdk7',
      ]

    modules.each { |module_name | on(master, "puppet module install #{module_name} --force")}

  end
end
