require 'easy_type_helpers/acceptance'
Dir["./spec/support/acceptance/**/*.rb"].sort.each { |f| require f }

RSpec.configure do |c|
  # Readable test descriptions
  c.formatter = :documentation
  c.order     = :defined
  c.include Helpers
  c.include BoltSpec::Run
  c.extend  PuppetLitmus::Serverspec
end

def hiera_values_on_sut( values)
  source = Dir::Tmpname.create(['hiera-', '.yaml']) {}
  File.write(source, values.to_yaml)
  bolt_upload_file( source, "/etc/puppetlabs/code/environments/production/data/common.yaml")
end
