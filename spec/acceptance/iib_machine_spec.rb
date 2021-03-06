require_relative '../spec_helper_acceptance'

describe 'ibm_profile::iib_machine' do

  before(:all) do
    hiera_values_on_sut(
      'easy_type::generate_password_mode' => 'development'
    )
    manifest = <<-MANIFEST
      package {'sudo': ensure => present}
    MANIFEST
    apply_manifest(manifest)
  end

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
