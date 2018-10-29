#++--++
#
# ibm_profile::mq_machine::packages
#
# @summary This class is the default implementation for making sure the required packages are on your system.
# Using hiera, you can customize some of the aspects of this process.
# 
# When these customizations aren't enough, you can replace the class with your own class. See [ibm_profile::mq_machine](./mq_machine.html) for an explanation on how to do this.
#
# @param list
#    The list of packages you want to install.
#    The default value is: `{}`
#
#--++--
class ibm_profile::mq_machine::packages(
  Array[String[1]] $list,
) inherits ibm_profile {
  echo {'MQ Packages':
    withpath => false,
  }

  ensure_packages($list, { 'ensure' => 'present'})
}
