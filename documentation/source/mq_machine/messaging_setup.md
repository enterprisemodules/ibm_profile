This class allows you to setup your MQ messaging setup. It has support for:

- queue's   (See [mq_queue](/docs/mq_config/mq_queue.html))
- topics    (See [mq_topic](/docs/mq_config/mq_topic.html))
- listeners (See [mq_listener](/docs/mq_config/mq_listener.html))
- channels  (See [mq_channel](/docs/mq_config/mq_channel.html))

 Use use a `yaml` representation of the specfied resource to specify all properties and params of the objects you need. 
 
 When a lot of the objects  have the same defaults, use the `defaults` parameter to specify a Hash of defaults.

<%- include_attributes [
  :queue_list,
  :queue_defaults,
  :topic_list,
  :topic_defaults,
  :listener_list,
  :listener_defaults,
  :channel_list,
  :channel_defaults,
] %>
