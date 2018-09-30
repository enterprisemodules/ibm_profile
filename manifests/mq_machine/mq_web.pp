#++--++
#--++--
class ibm_profile::mq_machine::mq_web(
  Hash $list,
) inherits ibm_profile {
  if $list.keys != [] {
    echo {'Configure MQ Web':
      withpath => false,
    }
  }
  ensure_resources('mq_web', $list)
}
