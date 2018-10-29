#++--++
#
# ibm_profile::mq_machine::limits
#
# @summary This class is the default implementation for making sure the OS Limits on your system are set correctly for MQ.
# Using hiera, you can customize some of the aspects of this process.
# 
# When these customizations aren't enough, you can replace the class with your own class. See [ibm_profile::mq_machine](./mq_machine.html) for an explanation on how to do this.
#
# @param list
#    The list of security limits to ensure for MQ.
#    The default is:
#    ```yaml
#    mqm/nofile":
#      soft: 20480
#      hard: 20480
#    mqm/nproc":
#      soft: 4096
#      hard: 4096
#    ```
#
#--++--
class ibm_profile::mq_machine::limits(
  Hash $list
) inherits ibm_profile {
  echo {'MQ limits':
    withpath => false,
  }
  ensure_resources(limits::limits, $list)
}
