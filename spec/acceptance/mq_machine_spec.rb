require_relative '../spec_helper_acceptance'

describe 'ibm_profile::admin_server' do

  manifest = <<-MANIFEST
    class {ibm_profile:
      source => '/software',
    }
    class {ibm_profile::weblogic:
      sysctl => 'skip',
    }

    contain ibm_profile::admin_server
  MANIFEST

  it 'installs the weblogic software' do
    apply_manifest(manifest, expect_changes: true)
  end

  describe file('/opt/oracle/middleware12/oracle_common') do
    it { should be_directory }
    it { should be_owned_by('oracle') }
    it { should be_grouped_into('dba') }
    it { should be_mode(750) }
  end

  describe file('/opt/oracle/middleware12/wlserver') do
    it { should be_directory }
    it { should be_owned_by('oracle') }
    it { should be_grouped_into('dba') }
    it { should be_mode(750) }
  end

  describe file('/opt/oracle/middleware12/oraInst.loc') do
    it { should be_file }
    it { should be_owned_by('oracle') }
    it { should be_grouped_into('dba') }
    it { should be_mode(640) }
  end

  it 'is idempotent on second run' do
    apply_manifest(manifest, expect_changes: false)
  end
end
