#++--++
#--++--
class ibm_profile::mq_machine::limits(
  Hash $list
) inherits ibm_profile {
  echo {'MQ limits':
    withpath => false,
  }
  ensure_resources(limits::limits, $list)
}
