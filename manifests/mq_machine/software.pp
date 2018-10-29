#++--++
#
# ibm_profile::mq_machine::software
#
# @summary This class allows you to setup your IIB software on your system.
# Specify the version and the location where to find the software kit.
#
# @param version
#    The version of MQ to install.
#
# @param source_location
#    The url or directory where to find the IIB installation tar.
#    gz file. You can use
#    either a file, a http url or a puppet url.
#
#--++--
class ibm_profile::mq_machine::software(
  Pattern[/\d+\.\d+\.\d+\.\d/] $version,
  String                       $source_location = $ibm_profile::source_location,
) inherits ibm_profile {
  echo {"MQ version ${version} software from ${source_location}":
    withpath => false,
  }
  class {'::mq_install::software':
    source_location    => $source_location,
    version            => $version,
  }
}
