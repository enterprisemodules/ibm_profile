#
# ibm_profile::iib_machine::software
#
# @summary This class allows you to setup your IIB software on your system.
#
#
# @param []] version
#    The version of IIB to install.
#
# @param [String] source_location
#    The location where the IIB installation can find the siftware distribution.
#    This can be a:
#    - directory
#    - http url
#    - puppet url
#
# @param [String] iib_os_user
#    The OS user to use for the installation of the IIB software.
#    The default is: `iibadmin`
#
#
# See the file "LICENSE" for the full license governing this code.
#
class ibm_profile::iib_machine::software (
  String                       $iib_os_user,
  String                       $source_location,
  Pattern[/\d+\.\d+\.\d+\.\d/] $version
) inherits ibm_profile {
  echo { "IIB version ${version} software from ${source_location}":
    withpath => false,
  }

  iib_install::software { $version:
    source_location => $source_location,
  }

  -> iib_instance { $version:
    ensure         => 'present',
    os_user        => $iib_os_user,
    home_directory => "/opt/IBM/iib-${version}",
  }
}
