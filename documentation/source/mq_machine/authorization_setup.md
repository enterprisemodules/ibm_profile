This class allows you to setup your MQ messaging security. It has support for:

- authentication_info    (See [mq_authentication_info](/docs/mq_config/mq_authentication_info.html))
- authorization          (See [mq_authorization](/docs/mq_config/mq_authorization.html))
- channel_authentication (See [mq_channel_authentication](/docs/mq_config/mq_channel_authentication.html))

 Use use a `yaml` representation of the specfied resource to specify all properties and params of the objects you need. 
 
 When a lot of the objects  have the same defaults, use the `defaults` parameter to specify a Hash of defaults.


<%- include_attributes [
  :authentication_defaults,
  :authentication_info,
  :authorization_defaults,
  :authorization_list,
  :channel_authentication_list,
] %>
