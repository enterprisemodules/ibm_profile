#++--++
#
# ibm_profile::iib_machine::deployments
#
# @summary 
# This class allows you to setup your IIB deployments. Use use a `yaml` representation of [iib_deployment](/docs/iib_config/iib_deployment.html) to specify all properties and params of the deployment you need. When a lot of the deployments have the same defaults, use the `defaults` parameter to specify a Hash of defaults.
#
# @param [Hash] defaults
#    a Hash of default properties added to all specfied deployments.
#    Use [iib_deployment](/docs/iib_config/iib_deployment.html) to specify the defaults.
#    The default value is: `{}`
#
# @param [Hash] list
#    a Hash of deployments.
#    Use [iib_deployment](/docs/iib_config/iib_deployment.html) to specify the defaults.
#    The default value is: `{}`
#
#--++--
class ibm_profile::iib_machine::deployments(
  Hash $defaults,
  Hash $list,
) inherits ibm_profile {
  echo {"Ensure IIB deployments(s) ${list.keys.join(', ')}":
    withpath => false,
  }
  $final_defaults = merge($defaults, { 'ensure' => 'present'})
  ensure_resources('iib_deployment', $list, $final_defaults)
}
