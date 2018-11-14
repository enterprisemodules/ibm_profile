require_relative '../spec_helper_acceptance'

describe 'ibm_profile::iib_machine' do

  manifest = <<-MANIFEST
    class {ibm_profile:
      source_location => '/software',
    }

    class {ibm_profile::iib_machine:
      sysctl => 'skip',
    }

    contain ibm_profile::iib_machine
  MANIFEST

  it 'installs the iib software' do
    apply_manifest(manifest, expect_changes: true)
  end

  describe file('/opt/IBM/iib-10.0.0.11/server/bin') do
    it { should be_directory }
    it { should be_owned_by('root') }
    it { should be_grouped_into('root') }
    it { should be_mode(755) }
  end

  describe group('mqbrkrs') do
    it { should exist }
  end

  describe user('iibadmin') do
    it { should exist }
    it { should belong_to_group 'mqm' }
    it { should belong_to_group 'mqbrkrs' }
  end

  it 'is idempotent on second run' do
    apply_manifest(manifest, expect_changes: false)
  end
end
