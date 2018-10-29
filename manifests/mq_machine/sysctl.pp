#++--++
#
# ibm_profile::mq_machine::sysctl
#
# @summary This class is the default implementation for making sure the OS sysctl settings on your system are set correctly for MQ.
# Using hiera, you can customize some of the aspects of this process.
# 
# When these customizations aren't enough, you can replace the class with your own class. See [ibm_profile::mq_machine](./mq_machine.html) for an explanation on how to do this.
#
# @param list
#    
#
#--++--
class ibm_profile::mq_machine::sysctl(
  Hash $list
) inherits ibm_profile {
  echo {'MQ Sysctl':
    withpath => false,
  }

  $defaults = {
    ensure  => 'present',
    persist => true,
  }
  ensure_resources(sysctl, $list, $defaults)
}
