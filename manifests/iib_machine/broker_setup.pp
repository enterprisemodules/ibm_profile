#
# ibm_profile::iib_machine::broker_setup
#
# @summary This class allows you to setup your IIB broker configuration.
# It has support for creating and managing multiple brokers. Use use a `yaml` representation of [iib_brokers](/docs/iib_config/iib_broker.html) to specify all properties and params of the brokers you need. When a lot of the brokers have the same defaults, use the `defaults` parameter to specify a Hash of defaults.
# 
# Besides the initial broker configuration, you can also configure additional properties. Read about [iib_properties here](/docs/iib_config/iib_property.html).
# 
# This class also allows you to register used credentials. Use the `credentials` property for this. Read about [iib_credential here](/docs/iib_config/iib_credential.html)
#
# @param [Hash] defaults
#    a Hash of default properties added to all specfied Brokers.
#    Use [iib_brokers](/docs/iib_config/iib_broker.html) to specify the defaults.
#    The default value is: `{}`
#
# @param [Hash] list
#    The list of brokers to configure.
#    Use use a `yaml` representation of [iib_brokers](/docs/iib_config/iib_broker.html) to specify all properties and params of the brokers you need. 
#    The default value is fetched from the hiera key `ibm_profile::iib_brokers` and is `{}` by default.
#
# @param [Hash] properties
#    The list of IIB broker properties.
#    Read about [iib_properties here](/docs/iib_config/iib_property.html). 
#    The default value is: `{}`
#
# @param [Hash] credentials
#    The list of used credentials.
#    Use the `credentials` property for this. Read about [iib_credential here](/docs/iib_config/iib_credential.html). 
#    The default value is: `{}`
#
#
# See the file "LICENSE" for the full license governing this code.
#
class ibm_profile::iib_machine::broker_setup(
  Hash $defaults,
  Hash $list,
  Hash $properties,
  Hash $credentials,
) inherits ibm_profile {
  echo {"Ensure IIB Brokers(s) ${list.keys.join(', ')}":
    withpath => false,
  }
  $final_defaults = merge($defaults, { 'ensure' => 'present'})
  ensure_resources('iib_broker', $list, $final_defaults)

  ensure_resources('iib_property', $properties)
  ensure_resources('iib_credential', $credentials)
}
