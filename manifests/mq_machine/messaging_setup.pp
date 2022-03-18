#
# ibm_profile::mq_machine::messaging_setup
#
# @summary This class allows you to setup your MQ messaging setup.
# It has support for:
# 
# - queue's   (See [mq_queue](/docs/mq_config/mq_queue.html))
# - topics    (See [mq_topic](/docs/mq_config/mq_topic.html))
# - listeners (See [mq_listener](/docs/mq_config/mq_listener.html))
# - channels  (See [mq_channel](/docs/mq_config/mq_channel.html))
# 
#  Use use a `yaml` representation of the specfied resource to specify all properties and params of the objects you need. 
#  
#  When a lot of the objects  have the same defaults, use the `defaults` parameter to specify a Hash of defaults.
#
# @param [Hash] queue_list
#    A Hash of MQ queues.
#    Use use a `yaml` representation of [mq_queue](/docs/mq_config/mq_queue.html) to specify all properties and params of the MQ queues you need. 
#    The default is: `{}`
#
# @param [Hash] queue_defaults
#    The defaults to use for all MQ queues.
#    Use use a `yaml` representation of [mq_queue](/docs/mq_config/mq_queue.html) to specify all properties and params of the MQ queues you need. 
#    The default is: `{}`
#
# @param [Hash] topic_list
#    A Hash of MQ topics.
#    Use use a `yaml` representation of [mq_topic](/docs/mq_config/mq_topic.html) to specify all properties and params of the MQ topics you need. 
#    The default is: `{}`
#
# @param [Hash] topic_defaults
#    The defaults to use for all MQ topics.
#    Use use a `yaml` representation of [mq_topic](/docs/mq_config/mq_topic.html) to specify all properties and params of the MQ topics you need. 
#    The default is: `{}`
#
# @param [Hash] listener_list
#    A Hash of MQ listeners.
#    Use use a `yaml` representation of [mq_listener](/docs/mq_config/mq_listener.html) to specify all properties and params of the MQ listeners you need. 
#    The default is: `{}`
#
# @param [Hash] listener_defaults
#    The defaults to use for all MQ listeners.
#    Use use a `yaml` representation of [mq_listener](/docs/mq_config/mq_listener.html) to specify all properties and params of the MQ listeners you need. 
#    The default is: `{}`
#
# @param [Hash] channel_list
#    A Hash of MQ channels.
#    Use use a `yaml` representation of [mq_channel](/docs/mq_config/mq_channel.html) to specify all properties and params of the MQ channels you need. 
#    The default is: `{}`
#
# @param [Hash] channel_defaults
#    The defaults to use for all MQ channels.
#    Use use a `yaml` representation of [mq_channel](/docs/mq_config/mq_channel.html) to specify all properties and params of the MQ channels you need. 
#    The default is: `{}`
#
#
# See the file "LICENSE" for the full license governing this code.
#
class ibm_profile::mq_machine::messaging_setup (
  Hash $channel_defaults,
  Hash $channel_list,
  Hash $listener_defaults,
  Hash $listener_list,
  Hash $queue_defaults,
  Hash $queue_list,
  Hash $topic_defaults,
  Hash $topic_list
) inherits ibm_profile {
  mq_config::qmgrs_in($queue_list).each |$qmgr| {
    if ! mq_config::is_standby($qmgr) {
      $list = mq_config::resources_for($queue_list, $qmgr)
      echo { "MQ queue(s) ${list.keys.join(', ')}": withpath => false }
      ensure_resources('mq_queue', $list, $queue_defaults)
    } else {
      echo { "MQ queue(s) on ${qmgr} skipping because it is in standby mode": withpath => false }
    }
  }

  mq_config::qmgrs_in($topic_list).each |$qmgr| {
    if ! mq_config::is_standby($qmgr) {
      $list = mq_config::resources_for($topic_list, $qmgr)
      echo { "MQ topics(s) ${list.keys.join(', ')}": withpath => false }
      ensure_resources('mq_topic', $list, $topic_defaults)
    } else {
      echo { "MQ topics(s) on ${qmgr} skipping because it is in standby mode": withpath => false }
    }
  }

  mq_config::qmgrs_in($channel_list).each |$qmgr| {
    if ! mq_config::is_standby($qmgr) {
      $list = mq_config::resources_for($channel_list, $qmgr)
      echo { "MQ channel(s) ${list.keys.join(', ')}": withpath => false }
      ensure_resources('mq_channel', $list, $channel_defaults)
    } else {
      echo { "MQ channel(s) on ${qmgr} skipping because it is in standby mode": withpath => false }
    }
  }

  mq_config::qmgrs_in($listener_list).each |$qmgr| {
    if ! mq_config::is_standby($qmgr) {
      $list = mq_config::resources_for($listener_list, $qmgr)
      echo { "MQ listener(s) ${list.keys.join(', ')}": withpath => false }
      ensure_resources('mq_listener', $list, $listener_defaults)
    } else {
      echo { "MQ listener(s) on ${qmgr} skipping because it is in standby mode": withpath => false }
    }
  }
}
