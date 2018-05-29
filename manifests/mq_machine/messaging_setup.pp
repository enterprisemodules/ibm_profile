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
  echo {"MQ queue(s) ${queue_list.keys.join(', ')}": withpath => false}
  echo {"MQ topic(s) ${topic_list.keys.join(', ')}": withpath => false}
  echo {"MQ channel(s) ${channel_list.keys.join(', ')}": withpath => false}
  echo {"MQ listener(s) ${listener_list.keys.join(', ')}": withpath => false}

  create_resources('mq_queue', $queue_list, $queue_defaults)
  create_resources('mq_topic', $topic_list, $topic_defaults)
  create_resources('mq_listener', $listener_list, $listener_defaults)
  create_resources('mq_channel', $channel_list, $channel_defaults)
}
