#++--++
#--++--
class ibm_profile::mq_machine::sysctl(
  Hash $list
) inherits ibm_profile {
  echo {'MQ Sysctl':
    withpath => false,
  }

  $defaults = {
    ensure  => 'present',
    persist => true,
  }
  create_resources(sysctl, $list, $defaults)
}
