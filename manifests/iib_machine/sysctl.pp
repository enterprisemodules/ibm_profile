#++--++
#--++--
class ibm_profile::iib_machine::sysctl(
  Hash $list
) inherits ibm_profile {
  echo {'IIB Sysctl':
    withpath => false,
  }

  $defaults = {
    ensure  => 'present',
    persist => true,
  }
  ensure_resources(sysctl, $list, $defaults)
}
