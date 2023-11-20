require 'rubygems'
require 'pathname'
require 'puppet'

def optional_require(file)
  begin
    require "#{file}"
  rescue LoadError
    puts "#{file} not loaded."
  end
end

optional_require 'puppet-lint/tasks/puppet-lint'
optional_require 'puppet-syntax/tasks/puppet-syntax'
optional_require 'puppetlabs_spec_helper/rake_tasks'
optional_require 'puppet_litmus'
optional_require 'puppet_litmus/rake_tasks'
optional_require 'bolt_spec/run'
optional_require 'em_tasks/rake_tasks'

Dir.glob('../easy_type/lib/tasks/*.rake').each { |r| load r}

if defined?(RSpec)
  desc "Run the tests"
  RSpec::Core::RakeTask.new(:test) do |t|
    t.rspec_opts = ['--color', '-f d']
    t.pattern = 'spec/*/*_spec.rb'
  end
end

@module_name = 'ibm_profile'

desc "Run Litmus setup"
task :litmus do
  docker_image =  'enterprisemodules/acc_base'
  node_name = 'mq_machine'
  Rake::Task['litmus:litmus_setup'].invoke(docker_image, node_name, ["--cgroup-parent=docker.slice", "--cgroupns private"])
end

if defined?(PuppetLint)
  PuppetLint.configuration.send("disable_140chars")
  # PuppetLint.configuration.send("disable_right_to_left_relationship")
  # PuppetLint.configuration.send("disable_autoloader_layout")
  # PuppetLint.configuration.send("disable_names_containing_dash")
  # PuppetLint.configuration.send("disable_class_inherits_from_params_class")
  # PuppetLint.configuration.send("disable_parameter_order")
  # PuppetLint.configuration.send("disable_inherits_across_namespaces")
  # PuppetLint.configuration.send("disable_nested_classes_or_defines")
  # PuppetLint.configuration.send("disable_variable_scope")
  # PuppetLint.configuration.send("disable_slash_comments")
  # PuppetLint.configuration.send("disable_star_comments")
  # PuppetLint.configuration.send("disable_selector_inside_resource")
  PuppetLint.configuration.send("disable_case_without_default")
  # PuppetLint.configuration.send("disable_documentation")
  # PuppetLint.configuration.send("disable_double_quoted_strings")
  # PuppetLint.configuration.send("disable_only_variable_string")
  # PuppetLint.configuration.send("disable_variables_not_enclosed")
  # PuppetLint.configuration.send("disable_single_quote_string_with_variables")
  # PuppetLint.configuration.send("disable_quoted_booleans")
  #--no-puppet_url_without_modules
  # PuppetLint.configuration.send("disable_variable_contains_dash")
  # PuppetLint.configuration.send("disable_hard_tabs")
  # PuppetLint.configuration.send("disable_trailing_whitespace")
  # PuppetLint.configuration.send("disable_2sp_soft_tabs")
  # PuppetLint.configuration.send("disable_arrow_alignment")
  # PuppetLint.configuration.send("disable_unquoted_resource_title")
  # PuppetLint.configuration.send("disable_ensure_first_param")
  # PuppetLint.configuration.send("disable_duplicate_params")
  # PuppetLint.configuration.send("disable_unquoted_file_mode")
  # PuppetLint.configuration.send("disable_file_mode")
  # PuppetLint.configuration.send("disable_ensure_not_symlink_target")
  #--no-unquoted_node_name

  exclude_paths = [
    "pkg/**/*",
    "vendor/**/*",
    "spec/**/*",
  ]
  PuppetLint.configuration.ignore_paths = exclude_paths
end

if defined?(PuppetSyntax)
  PuppetSyntax.exclude_paths = exclude_paths
end

desc "Run syntax, lint, and spec tests."
task :default => [
	:spec_prep,
	:syntax,
	:test,
	:lint,
	:spec_clean
]

begin
  require 'rubocop/rake_task'
  desc 'Run RuboCop on the lib directory'
  Rubocop::RakeTask.new(:rubocop) do |task|
    task.patterns = ['lib/**/*.rb']
    task.fail_on_error = true
  end
rescue LoadError, NameError
end
