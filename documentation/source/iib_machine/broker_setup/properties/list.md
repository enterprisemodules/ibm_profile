The list of brokers to configure. Use use a `yaml` representation of [iib_brokers](/docs/iib_config/iib_broker.html) to specify all properties and params of the brokers you need. 

The default value is fetched from the hiera key `ibm_profile::iib_brokers` and is `{}` by default.