
source ENV['GEM_SOURCE'] || 'https://rubygems.org'

puppetversion = ENV.key?('PUPPET_GEM_VERSION') ? "#{ENV['PUPPET_GEM_VERSION']}" :  '6.4.2'

gem 'puppet', puppetversion, :require => false, :groups => [:test]
if Gem::Version.new(puppetversion) > Gem::Version.new('5.0.0')
  gem 'pdk',  '>1.9.0', '<1.14.0'
end

group :unit_test do
  gem 'hiera-puppet-helper'
  gem 'rspec-puppet'
  gem 'rspec-puppet-utils'
  gem 'rspec-puppet-facts', '1.9.2'
  gem 'mocha', '1.3.0'
end

group 'acceptance_test' do
  gem 'bolt', git: 'https://github.com/enterprisemodules/bolt.git' if puppetversion == '6.4.2'
  gem 'puppet_litmus', git: 'https://github.com/enterprisemodules/puppet_litmus.git' if puppetversion == '6.4.2'
  gem 'serverspec'
  gem 'rspec-retry'
  if Gem::Version.new(RUBY_VERSION) < Gem::Version.new('2.0.0')
    gem 'parallel_tests', '< 2.10.0'
  else
    gem 'parallel_tests'
  end
end

group :release, :acceptance_test do
  if Gem::Version.new(RUBY_VERSION) < Gem::Version.new('2.2.0')
    gem 'rake', '< 13.0.0'
  else
    gem 'rake'
  end
  gem 'puppet-blacksmith'
  gem 'em_tasks', :git => "https://github.com/enterprisemodules/em_tasks.git" if RUBY_VERSION > '2.1.2'
end

group :quality do
  gem 'brakeman'
  gem 'bundle-audit'
  gem 'fasterer'
  gem 'metadata-json-lint'
  gem 'overcommit'
  gem 'puppet-lint'
  gem 'reek'
  gem 'rubocop', :require => false
  gem 'rubocop-performance' if Gem::Version.new(RUBY_VERSION) > Gem::Version.new('2.3.0')
end

group :unit_test, :acceptance_test, :publish do
  gem 'easy_type_helpers', :git => 'https://github.com/enterprisemodules/easy_type_helpers.git'
  gem 'puppetlabs_spec_helper'
end
