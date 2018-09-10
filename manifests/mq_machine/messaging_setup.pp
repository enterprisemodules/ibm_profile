#++--++
#--++--
class ibm_profile::mq_machine::messaging_setup(
  Hash $queue_list,
  Hash $queue_defaults,
  Hash $topic_list,
  Hash $topic_defaults,
  Hash $listener_list,
  Hash $listener_defaults,
  Hash $channel_list,
  Hash $channel_defaults,
) inherits ibm_profile {

  mq_config::qmgrs_in($queue_list).each |$qmgr| {
    if ! mq_config::is_standby($qmgr) {
      $list = mq_config::resources_for($queue_list, $qmgr)
      echo {"MQ queue(s) ${list.keys.join(', ')}": withpath => false}
      create_resources('mq_queue', $list, $queue_defaults)
    } else {
      echo {"MQ queue(s) on ${qmgr} skipping because it is in standby mode": withpath => false}
    }
  }

  mq_config::qmgrs_in($topic_list).each |$qmgr| {
    if ! mq_config::is_standby($qmgr) {
      $list = mq_config::resources_for($topic_list, $qmgr)
      echo {"MQ topics(s) ${list.keys.join(', ')}": withpath => false}
      create_resources('mq_topic', $list, $topic_defaults)
    } else {
      echo {"MQ topics(s) on ${qmgr} skipping because it is in standby mode": withpath => false}
    }
  }

  mq_config::qmgrs_in($channel_list).each |$qmgr| {
    if ! mq_config::is_standby($qmgr) {
      $list = mq_config::resources_for($channel_list, $qmgr)
      echo {"MQ channel(s) ${list.keys.join(', ')}": withpath => false}
      create_resources('mq_channel', $list, $channel_defaults)
    } else {
      echo {"MQ channel(s) on ${qmgr} skipping because it is in standby mode": withpath => false}
    }
  }

  mq_config::qmgrs_in($listener_list).each |$qmgr| {
    if ! mq_config::is_standby($qmgr) {
      $list = mq_config::resources_for($listener_list, $qmgr)
      echo {"MQ listener(s) ${list.keys.join(', ')}": withpath => false}
      create_resources('mq_channel', $list, $listener_defaults)
    } else {
      echo {"MQ listener(s) on ${qmgr} skipping because it is in standby mode": withpath => false}
    }
  }
}
