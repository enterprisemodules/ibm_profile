#++--++
#--++--
class ibm_profile::mq_machine::authorization_setup(
  Hash $authentication_defaults,
  Hash $authentication_info,
  Hash $authorization_defaults,
  Hash $authorization_list,
  Hash $channel_authentication_list,
) inherits ibm_profile {

  mq_config::qmgrs_in($authentication_info).each |$qmgr| {
    if ! mq_config::is_standby($qmgr) {
      $list = mq_config::resources_for($authentication_info, $qmgr)
      echo {'MQ Authorizations & Authentication settings': withpath => false,}
      create_resources('mq_authentication_info', $list, $authentication_defaults)
    } else {
      echo {"MQ Authorizations & Authentication settings on ${qmgr} skipping because it is in standby mode": withpath => false}
    }
  }

  mq_config::qmgrs_in($channel_authentication_list).each |$qmgr| {
    if ! mq_config::is_standby($qmgr) {
      $list = mq_config::resources_for($channel_authentication_list, $qmgr)
      echo {"MQ channel authentication record(s) ${list.keys.join(', ')}": withpath => false,}
      create_resources('mq_channel_authentication', $list)
    } else {
      echo {"MQ channel authentication record(s) on ${qmgr} skipping because it is in standby mode": withpath => false}
    }
  }
}
