#
# ibm_profile::iib_machine::autostart
#
# @summary This class enables autostart for the specfied brokers.
# This means a `systemctl` unit is created and the named brokers are added. For autostart to be enabled, the class needs the OS user and the OS group the broker will run in. It also needs the version of IIB.
#
# @param [Hash] list
#    A list of brokers.
#    The default value is fetched from the hiera key `ibm_profile::iib_brokers`. To fill this list use a `yaml` representation of [iib_brokers](/docs/iib_config/iib_broker.html)
#
# @param [String] version
#    The IIB version to use when autostarting the brokers.
#    The default is value is fetched from the hiera key `ibm_profile::iib_machine::software::version`.
#
# @param [String] iib_os_user
#    The OS user used for autostarting the brokers.
#    The default is `iibadmin`
#
# @param [String] iib_os_group
#    The OS group used for autostarting the brokers.
#    The default is `mqbrkrs`
#
#
# See the file "LICENSE" for the full license governing this code.
#
class ibm_profile::iib_machine::autostart (
  String $iib_os_group,
  String $iib_os_user,
  Hash   $list,
  String $version
) inherits ibm_profile {
  echo { "Ensure Autostart for IIB Broker(s) ${list.keys.join(', ')}":
    withpath => false,
  }
  $list.keys.each |$broker| {
    iib_install::autostart { $broker:
      ensure      => 'present',
      iib_version => $version,
      iib_user    => $iib_os_user,
      iib_group   => $iib_os_group,
    }
  }
}
