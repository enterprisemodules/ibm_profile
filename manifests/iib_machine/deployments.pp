#++--++
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
