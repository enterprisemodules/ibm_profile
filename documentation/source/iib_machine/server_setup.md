This class allows you to setup your IIB server configuration. It has support for creating and managing multiple servers. Use use a `yaml` representation of [iib_servers](/docs/iib_config/iib_server.html) to specify all properties and params of the servers you need. When a lot of the servers have the same defaults, use the `defaults` parameter to specify a Hash of defaults.

Besides the initial server configuration, you can also configure additional properties. Read about [iib_properties here](/docs/iib_config/iib_property.html).


<%- include_attributes [
  :defaults,
  :list,
  :properties,
] %>
