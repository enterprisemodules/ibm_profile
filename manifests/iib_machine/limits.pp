#++--++
#
# ibm_profile::iib_machine::limits
#
# @summary This class is the default implementation for making sure the OS Limits on your system are set correctly for IIB.
# Using hiera, you can customize some of the aspects of this process.
# 
# When these customizations aren't enough, you can replace the class with your own class. See [ibm_profile::iib_machine](./iib_machine.html) for an explanation on how to do this.
#
# @param list
#    The list of security limits to ensure for IIB.
#    The default is: `{}`
#
#--++--
class ibm_profile::iib_machine::limits(
  Hash $list
) inherits ibm_profile {
  echo {'IIB limits':
    withpath => false,
  }
  ensure_resources(limits::limits, $list)
}
