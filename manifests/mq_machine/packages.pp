#++--++
#
# ibm_profile::packages
#
# @summary 
# This class is the default implementation for making sure the required packages are on your system.Using hiera, you can customize some of the aspects of this process.When these customizations aren't enough, you can replace the class with your own class. See [ibm_profile::weblogic](./weblogic.html) for an explanation on how to do this.
#
# @param [Array[String[1]]] list
#    The required packages for a succesful WebLogic installation.
#    The defaults are:
#    ```yaml
#    ibm_profile::weblogic::packages::list:
#      - binutils.x86_64
#      - unzip.x86_64
#    ```
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
