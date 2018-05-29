#++--++
#--++--
class ibm_profile::mq_machine::manager_setup(
  Hash $defaults,
  Hash $list = $ibm_profile::mq_managers,
) inherits ibm_profile {
  echo {"Ensure MQ Manager(s) ${list.keys.join(', ')}":
    withpath => false,
  }
  $final_defaults = merge($defaults, { 'ensure' => 'present'})
  create_resources('mq_manager', $list, $final_defaults)
}
