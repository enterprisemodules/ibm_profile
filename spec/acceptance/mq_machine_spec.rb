require_relative '../spec_helper_acceptance'

describe 'ibm_profile::mq_machine' do

  before(:all) do
    manifest = <<-MANIFEST
      package {'sudo': ensure => 'present' }
    MANIFEST
    apply_manifest(manifest)
  end

  manifest = <<-MANIFEST
    class {ibm_profile:
      source_location => '/software',
    }

    class {ibm_profile::mq_machine:
      sysctl => 'skip',
    }

    contain ibm_profile::mq_machine
  MANIFEST

  it 'installs the mq software' do
    apply_manifest(manifest, expect_changes: true)
  end

  describe file('/opt/mqm/bin') do
    it { should be_directory }
    it { should be_owned_by('mqm') }
    it { should be_grouped_into('mqm') }
    it { should be_mode(555) }
  end

  ['MQSeriesRuntime', 'MQSeriesJRE', 'MQSeriesJava', 'MQSeriesServer' ].each do | package|
    describe package('MQSeriesRuntime') do
      it { should be_installed }
      its('version') { should eq '9.0.0-0' }
    end
  end


  it 'is idempotent on second run' do
    apply_manifest(manifest, expect_changes: false)
  end
end
