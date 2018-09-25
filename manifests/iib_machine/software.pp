#++--++
#--++--
class ibm_profile::iib_machine::software(
  Pattern[/\d+\.\d+\.\d+\.\d/] $version,
  String                       $source_location,
  String                       $iib_os_user,
) inherits ibm_profile {
  echo {"IIB version ${version} software from ${source_location}":
    withpath => false,
  }

  iib_install::software {$version:
    source_location => $source_location,
  }

  -> iib_instance { $version:
    ensure         => 'present',
    os_user        => $iib_os_user,
    home_directory => "/opt/IBM/iib-${version}",
  }

}
