#
# ibm_profile::mq_machine::fixpack
#
# @summary This class allows you to install a certain fixpack
# on your system.
#
# @param []]] version
#    The version of MQ to install.
#
# @param [String] source_location
#    The url or directory where to find the IIB installation tar.
#    gz file. You can use
#    either a file, a http url or a puppet url.
#
#
# See the file "LICENSE" for the full license governing this code.
#
class ibm_profile::mq_machine::fixpack (
  String  $source_location = $ibm_profile::source_location,
  Optional[Pattern[/\d+\.\d+\.\d+\.\d/]]
  $version = undef,
) inherits ibm_profile {
  if $version != undef {
    echo { "MQ fixpack ${version} software from ${source_location}":
      withpath => false,
    }

    class { 'mq_install::fixpack':
      version         => $version,
      source_location => $source_location,
    }
    contain mq_install::fixpack
  }
}
