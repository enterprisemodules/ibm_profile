#++--++
#--++--
class ibm_profile::mq_machine::fixpack(
  String  $source_location = $ibm_profile::source_location,
  Optional[Pattern[/\d+\.\d+\.\d+\.\d/]]
          $version = undef,
) inherits ibm_profile {
  if $version != undef {
    echo {"MQ fixpack ${version} software from ${source_location}":
      withpath => false,
    }

    mq_install::fixpack{ $version:
      source_location => '/vagrant/modules/software/files',
    }
  }
}
