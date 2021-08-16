#
# ibm_profile::mq_machine::manager_setup
#
# @summary This class allows you to setup your MQ manager configuration.
# It has support for creating and managing multiple MQ managers. Use use a `yaml` representation of [mq_manager](/docs/mq_config/mq_manager.html) to specify all properties and params of the brokers you need. When a lot of the MQ managers have the same defaults, use the `defaults` parameter to specify a Hash of defaults.
#
# @param [Hash] defaults
#    The defaults to use for all MQ managers.
#    Use use a `yaml` representation of [mq_manager](/docs/mq_config/mq_manager.html) to specify all properties and params of the MQ managers you need. 
#    The default is: `{}`
#
# @param [Hash] list
#    A Hash of MQ managers.
#    Use use a `yaml` representation of [mq_manager](/docs/mq_config/mq_manager.html) to specify all properties and params of the MQ managers you need. 
#    The default is: `{}`
#
#
# See the file "LICENSE" for the full license governing this code.
#
class ibm_profile::mq_machine::manager_setup(
  Hash $defaults,
  Hash $list = $ibm_profile::mq_managers,
) inherits ibm_profile {
  echo {"Ensure MQ Manager(s) ${list.keys.join(', ')}":
    withpath => false,
  }
  $final_defaults = merge($defaults, { 'ensure' => 'present'})
  ensure_resources('mq_manager', $list, $final_defaults)
}
