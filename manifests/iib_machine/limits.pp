#++--++
#--++--
class ibm_profile::iib_machine::limits(
  Hash $list
) inherits ibm_profile {
  echo {'IIB limits':
    withpath => false,
  }
  ensure_resources(limits::limits, $list)
}
