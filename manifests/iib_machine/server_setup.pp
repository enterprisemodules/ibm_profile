#
# ibm_profile::iib_machine::server_setup
#
# @summary This class allows you to setup your IIB server configuration.
# It has support for creating and managing multiple servers. Use use a `yaml` representation of [iib_servers](/docs/iib_config/iib_server.html) to specify all properties and params of the servers you need. When a lot of the servers have the same defaults, use the `defaults` parameter to specify a Hash of defaults.
# 
# Besides the initial server configuration, you can also configure additional properties. Read about [iib_properties here](/docs/iib_config/iib_property.html).
#
# @param [Hash] defaults
#    a Hash of default properties added to all specfied Brokers.
#    Use [iib_server](/docs/iib_config/iib_server.html) to specify the defaults.
#    The default value is: `{}`
#
# @param [Hash] list
#    The list of servers to configure.
#    Use use a `yaml` representation of [iib_server](/docs/iib_config/iib_server.html) to specify all properties and params of the brokers you need. 
#    The default value is: `{}`
#
# @param [Hash] properties
#    The list of IIB server properties.
#    Read about [iib_properties here](/docs/iib_config/iib_property.html). 
#    The default value is: `{}`
#
#
# See the file "LICENSE" for the full license governing this code.
#
class ibm_profile::iib_machine::server_setup (
  Hash $defaults,
  Hash $list,
  Hash $properties,
) inherits ibm_profile {
  echo { "Ensure IIB servers(s) ${list.keys.join(', ')}":
    withpath => false,
  }
  $final_defaults = stdlib::merge($defaults, { 'ensure' => 'present' })
  ensure_resources('iib_server', $list, $final_defaults)

  ensure_resources('iib_property', $properties)
}
