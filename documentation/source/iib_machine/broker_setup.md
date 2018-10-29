This class allows you to setup your IIB broker configuration. It has support for creating and managing multiple brokers. Use use a `yaml` representation of [iib_brokers](/docs/iib_config/iib_broker.html) to specify all properties and params of the brokers you need. When a lot of the brokers have the same defaults, use the `defaults` parameter to specify a Hash of defaults.

Besides the initial broker configuration, you can also configure additional properties. Read about [iib_properties here](/docs/iib_config/iib_property.html).

This class also allows you to register used credentials. Use the `credentials` property for this. Read about [iib_credential here](/docs/iib_config/iib_credential.html)

<%- include_attributes [
  :defaults,
  :list,
  :properties,
  :credentials,
] %>
