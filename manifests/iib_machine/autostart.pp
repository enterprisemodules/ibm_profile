#++--++
#--++--
class ibm_profile::iib_machine::autostart(
  Hash   $list,
  String $version,
  String $iib_os_user,
  String $iib_os_group,
) inherits ibm_profile {
  echo {"Ensure Autostart for IIB Broker(s) ${list.keys.join(', ')}":
    withpath => false,
  }
  $list.keys.each |$broker| {
    iib_install::autostart {$broker:
      ensure       => 'present',
      iib_version  => $iib_version,
      iib_user     => $iib_os_user,
      iib_group    => $iib_os_group,
    }
  }
}
