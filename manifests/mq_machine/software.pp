#++--++
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
