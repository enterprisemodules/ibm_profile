# frozen_string_literal: true

require 'serverspec'
require 'puppet_litmus'
require 'spec_helper_acceptance_local' if File.file?(File.join(File.dirname(__FILE__), 'spec_helper_acceptance_local.rb'))
include PuppetLitmus

if ENV['TARGET_HOST'].nil? || ENV['TARGET_HOST'] == 'localhost'
  puts 'Running tests against this machine !'
  if Gem.win_platform?
    set :backend, :cmd
  else
    set :backend, :exec
  end
else
  # load inventory
  inventory_hash = inventory_hash_from_inventory_file
  node_config = config_from_node(inventory_hash, ENV['TARGET_HOST'])

  if target_in_group(inventory_hash, ENV['TARGET_HOST'], 'docker_nodes')
    host = ENV['TARGET_HOST']
    set :backend, :docker
    set :docker_container, host
  elsif target_in_group(inventory_hash, ENV['TARGET_HOST'], 'ssh_nodes')
    set :backend, :ssh
    options = Net::SSH::Config.for(host)
    options[:user] = node_config.dig('ssh', 'user') unless node_config.dig('ssh', 'user').nil?
    options[:port] = node_config.dig('ssh', 'port') unless node_config.dig('ssh', 'port').nil?
    options[:keys] = node_config.dig('ssh', 'private-key') unless node_config.dig('ssh', 'private-key').nil?
    options[:password] = node_config.dig('ssh', 'password') unless node_config.dig('ssh', 'password').nil?
    options[:verify_host_key] = Net::SSH::Verifiers::Null.new unless node_config.dig('ssh', 'host-key-check').nil?
    host = if ENV['TARGET_HOST'].include?(':')
             ENV['TARGET_HOST'].split(':').first
           else
             ENV['TARGET_HOST']
           end
    set :host,        options[:host_name] || host
    set :ssh_options, options
    set :request_pty, true
  elsif target_in_group(inventory_hash, ENV['TARGET_HOST'], 'winrm_nodes')
    require 'winrm'

    set :backend, :winrm
    set :os, family: 'windows'
    user = node_config.dig('winrm', 'user') unless node_config.dig('winrm', 'user').nil?
    pass = node_config.dig('winrm', 'password') unless node_config.dig('winrm', 'password').nil?
    endpoint = "http://#{ENV['TARGET_HOST']}:5985/wsman"
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
                            :ignore_list => %w[software log junit],
                            :target_module_path => '/etc/puppetlabs/code/environments/production/modules',
                            :module_name => 'ora_profile')
      # Now we don't use hiera any more. This code is needed when we want to use hiera to specify any stuff
      on(master, "mkdir -p /etc/puppetlabs/puppet/data")
      scp_to(master, "#{proj_root}/spec/hiera.yaml",'/etc/puppetlabs/puppet/hiera.yaml',  )
      scp_to(master, "#{proj_root}/spec/acceptance_hiera_data.yaml",'/etc/puppetlabs/puppet/data')
      #
      # Install required modules
      #
      modules = [
        'saz-limits',
        'herculesteam-augeasproviders_sysctl',
        'enterprisemodules-easy_type',
        'enterprisemodules-ora_install',
        'enterprisemodules-ora_config',
        'enterprisemodules-ora_cis',
        'puppetlabs-stdlib',
        'ipcrm-echo',
        'puppet-archive',
        'herculesteam-augeasproviders_core',
        'herculesteam-augeasproviders_sysctl',
        'saz-limits',
        'puppetlabs-firewall',
        'crayfishx-firewalld'
      ]
    end
    opts = {
      user: user,
      password: pass,
      endpoint: endpoint,
      operation_timeout: 300,
    }

    winrm = WinRM::Connection.new opts
    Specinfra.configuration.winrm = winrm
  end
end
