#++--++
#--++--
class ibm_profile::iib_machine::server_setup(
  Hash $defaults,
  Hash $list,
  Hash $properties,
) inherits ibm_profile {
  echo {"Ensure IIB servers(s) ${list.keys.join(', ')}":
    withpath => false,
  }
  $final_defaults = merge($defaults, { 'ensure' => 'present'})
  ensure_resources('iib_server', $list, $final_defaults)

  ensure_resources('iib_property', $properties)
}
