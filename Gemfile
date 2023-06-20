source ENV['GEM_SOURCE'] || 'https://rubygems.org'

puppetversion = ENV.key?('PUPPET_GEM_VERSION') ? "#{ENV['PUPPET_GEM_VERSION']}" : '8.0.1'

gem 'puppet', puppetversion, :require => false, :groups => [:test]
gem 'rake'
gem 'puppet-resource_api', :require => false, :git => 'https://github.com/enterprisemodules/puppet-resource_api.git', :ref => 'fix_issue_314'
gem 'byebug'
gem 'pdk', :git => 'https://github.com/puppetlabs/pdk.git', :ref => 'main'
gem 'rexml'

group :unit_test do
  gem 'puppet-catalog_rspec'
  gem 'hiera-puppet-helper'
  gem 'rspec-puppet'
  gem 'rspec-puppet-utils'
  gem 'rspec-puppet-facts'
  gem 'gettext'
  gem 'rspec-expectations'
end

group :acceptance_test do
  gem 'bolt'
  gem 'puppet_litmus'
  gem 'serverspec'
  gem 'rspec-retry'
  gem 'parallel_tests'
end

group :release, :acceptance_test do
  gem 'em_tasks', :git => "https://github.com/enterprisemodules/em_tasks.git"
  gem 'dependency_checker'
end

group :unit_test, :acceptance_test, :publish do
  gem 'easy_type_helpers', git: 'https://github.com/enterprisemodules/easy_type_helpers.git'
  gem 'puppetlabs_spec_helper'
end

group :quality do
  gem 'voxpupuli-puppet-lint-plugins'
  # gem 'puppet-lint-uncuddled_else-check'
  # gem 'puppet-lint-no_symbolic_file_modes-check'
  # gem 'puppet-lint-no_erb_template-check'
  # gem 'puppet-lint-package_ensure-check'
  # gem 'puppet-lint-absolute_template_path'
  # gem 'puppet-lint-no_file_path_attribute-check'
  # gem 'puppet-lint-template_file_extension-check'
  # gem 'puppet-lint-numericvariable'
  # gem 'puppet-lint-appends-check'
  # gem 'puppet-lint-class_parameter-check'
  # gem 'puppet-lint-world_writable_files-check'
  # gem 'puppet-lint-empty_trailing_lines'
  # gem 'puppet-lint-empty_lines_around_body-check'
  # gem 'puppet-lint-recurse_file-check'
  # gem 'puppet-lint-explicit_hiera_class_param_lookup-check'
  gem 'puppet-lint-param-types'
  gem 'fasterer'
  gem 'bundle-audit'
  gem 'metadata-json-lint'
  gem 'overcommit'
  gem 'puppet-lint'
  gem 'reek'
  gem 'rubocop', require: false
  gem 'rubocop-rspec'
  gem 'rubocop-performance'
  gem 'brakeman'
end
