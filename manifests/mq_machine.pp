#++--++
#
# ibm_profile::mq_machine
#
# @summary 
# This is a highly customizable Puppet profile class to define a WebLogic Software and its requirements on your system. At its core just adding:```contain ibm_profile::weblogic```Is enough to get a WebLogic 12.2.1.3 installed on your system.But sometimes you have specific uses cases that are not handled well by the standard classes. This profile class allows you to add your own code to the execution.## StagesDefining and starting a WebLogic Admin Server on you system goes through several stages(These are not puppet stages):- [`sysctl`](/docs/ibm_profile/sysctl.html)            Set required sysctl parameters- [`limits`](/docs/ibm_profile/limits.html)            Set OS security limits- [`packages`](/docs/ibm_profile/packages.html)          Install required packages- [`groups_and_users`](/docs/ibm_profile/groups_and_users.html)  Create required OS users and groups- [`ssh_setup`](/docs/ibm_profile/ssh_setup.html)         Setup SSH for accounts- [`firewall`](/docs/ibm_profile/firewall.html)          Setup the firewall- [`java_software`](/docs/ibm_profile/java_software.html)     Install the java software- [`wls_software`](/docs/ibm_profile/wls_software.html)      Install the WebLogic software- [`wls_patches`](/docs/ibm_profile/wls_patches.html)       Install the WebLogic patchesAll these stages have a default implementation. This implementation is suitable to get started with. These classed all have parameters you can customize through hiera values. The defaults are specified in the module's `data/default.yaml` file.## before classesBut sometimes this is not enough, and you would like to add some extra definitions, you can, for example, add a Puppet class to be executed after the `packages` stage is done and before the `groups_and_users` is done. You can do this by adding the next line to your yaml data:```yamlibm_profile::weblogic::groups_and_users:   my_profile::my_extra_class```## after classesYou can do the same when you want to add code after one of the stage classes:```yamlibm_profile::weblogic::firewall:   my_profile::my_extra_class```## SkippingSometimes organizations use different modules and mechanisms to implement a feature, and you want to skip the class:```yamlibm_profile::weblogic::java_software:   skip```## ReplacingOr provide your own implementation:```yamlibm_profile::weblogic::wls_datasources:   my_profile::my_own_implementation```This mechanism can be used for all named stages and makes it easy to move from an easy setup with a running standard WebLogic software installation to a fully customized setup using a lot of your own classes plugged in.Look at the description of the stages and their properties.
#
# @param [Optional[String]] after_firewall
#    The name of the class you want to execute directly **after** the `firewall` class.
#    You can use hiera to set this value. Here is an example:
#    ```yaml
#    ibm_profile::weblogic::after_firewall:  my_module::my_class
#    ```
#
# @param [Optional[String]] after_groups_and_users
#    The name of the class you want to execute directly **after** the `groups_and_usesr` class.
#    You can use hiera to set this value. Here is an example:
#    ```yaml
#    ibm_profile::weblogic::after_groups_and_usesr:  my_module::my_class
#    ```
#
# @param after_java_software
#    
#
# @param [Optional[String]] after_limits
#    The name of the class you want to execute directly **after** the `limits` class.
#    You can use hiera to set this value. Here is an example:
#    ```yaml
#    ibm_profile::weblogic::after_limits:  my_module::my_class
#    ```
#
# @param [Optional[String]] after_packages
#    The name of the class you want to execute directly **after** the `packages` class.
#    You can use hiera to set this value. Here is an example:
#    ```yaml
#    ibm_profile::weblogic::after_packages:  my_module::my_class
#    ```
#
# @param after_ssh_setup
#    
#
# @param [Optional[String]] after_sysctl
#    The name of the class you want to execute directly **after** the `sysctl` class.
#    You can use hiera to set this value. Here is an example:
#    ```yaml
#    ibm_profile::weblogic::after_sysctl:  my_module::my_class
#    ```
#
# @param after_wls_patches
#    
#
# @param after_wls_software
#    
#
# @param [Optional[String]] before_firewall
#    The name of the class you want to execute directly **before** the `firewall` class.
#    You can use hiera to set this value. Here is an example:
#    ```yaml
#    ibm_profile::weblogic::before_firewall:  my_module::my_class
#    ```
#
# @param [Optional[String]] before_groups_and_users
#    The name of the class you want to execute directly **before** the `groups_and_users` class.
#    You can use hiera to set this value. Here is an example:
#    ```yaml
#    ibm_profile::weblogic::before_groups_and_users:  my_module::my_class
#    ```
#
# @param before_java_software
#    
#
# @param [Optional[String]] before_limits
#    The name of the class you want to execute directly **before** the `limits` class.
#    You can use hiera to set this value. Here is an example:
#    ```yaml
#    ibm_profile::weblogic::before_limits:  my_module::my_class
#    ```
#
# @param [Optional[String]] before_packages
#    The name of the class you want to execute directly **before** the `packages` class.
#    You can use hiera to set this value. Here is an example:
#    ```yaml
#    ibm_profile::weblogic::before_packages:  my_module::my_class
#    ```
#
# @param before_ssh_setup
#    
#
# @param [Optional[String]] before_sysctl
#    The name of the class you want to execute directly **before** the `sysctl` class.
#    You can use hiera to set this value. Here is an example:
#    ```yaml
#    ibm_profile::weblogic::before_sysctl:  my_module::my_class
#    ```
#
# @param before_wls_patches
#    
#
# @param before_wls_software
#    
#
# @param [Optional[String]] firewall
#    Use this value if you want to skip or use your own class for stage `firewall`.
#    ## Use your own class
#    You can use hiera to set this value. Here is an example:
#    ```yaml
#    ibm_profile::weblogic::firewall:  my_module::my_class
#    ```
#    ## Skip
#    You can use hiera to set this value. Here is an example:
#    ```yaml
#    ibm_profile::weblogic::firewall:  skip
#    ```
#
# @param [Optional[String]] groups_and_users
#    Use this value if you want to skip or use your own class for stage `groups_and_users`.
#    ## Use your own class
#    You can use hiera to set this value. Here is an example:
#    ```yaml
#    ibm_profile::weblogic::groups_and_users:  my_module::my_class
#    ```
#    ## Skip
#    You can use hiera to set this value. Here is an example:
#    ```yaml
#    ibm_profile::weblogic::groups_and_users:  skip
#    ```
#
# @param java_software
#    
#
# @param [Optional[String]] limits
#    Use this value if you want to skip or use your own class for stage `limits`.
#    ## Use your own class
#    You can use hiera to set this value. Here is an example:
#    ```yaml
#    ibm_profile::weblogic::limits:  my_module::my_class
#    ```
#    ## Skip
#    You can use hiera to set this value. Here is an example:
#    ```yaml
#    ibm_profile::weblogic::limits:  skip
#    ```
#
# @param [Optional[String]] packages
#    Use this value if you want to skip or use your own class for stage `packages`.
#    ## Use your own class
#    You can use hiera to set this value. Here is an example:
#    ```yaml
#    ibm_profile::weblogic::packages:  my_module::my_class
#    ```
#    ## Skip
#    You can use hiera to set this value. Here is an example:
#    ```yaml
#    ibm_profile::weblogic::packages:  skip
#    ```
#
# @param ssh_setup
#    
#
# @param [Optional[String]] sysctl
#    Use this value if you want to skip or use your own class for stage `sysctl`.
#    ## Use your own class
#    You can use hiera to set this value. Here is an example:
#    ```yaml
#    ibm_profile::weblogic::sysctl:  my_module::my_class
#    ```
#    ## Skip
#    You can use hiera to set this value. Here is an example:
#    ```yaml
#    ibm_profile::weblogic::sysctl:  skip
#    ```
#
# @param wls_patches
#    
#
# @param wls_software
#    
#
#--++--
class ibm_profile::mq_machine(
  Optional[String] $before_sysctl = undef,
  Optional[String] $before_limits = undef,
  Optional[String] $before_groups_and_users = undef,
  Optional[String] $before_packages = undef,
  Optional[String] $before_firewall = undef,
  Optional[String] $before_software = undef,
  Optional[String] $before_manager_setup = undef,
  Optional[String] $before_autostart = undef,
  Optional[String] $before_authorization_setup = undef,
  Optional[String] $before_messaging_setup = undef,
  Optional[String] $sysctl = undef,
  Optional[String] $limits = undef,
  Optional[String] $groups_and_users = undef,
  Optional[String] $packages = undef,
  Optional[String] $firewall = undef,
  Optional[String] $software = undef,
  Optional[String] $manager_setup = undef,
  Optional[String] $autostart = undef,
  Optional[String] $authorization_setup = undef,
  Optional[String] $messaging_setup = undef,
  Optional[String] $after_sysctl = undef,
  Optional[String] $after_limits = undef,
  Optional[String] $after_groups_and_users = undef,
  Optional[String] $after_packages = undef,
  Optional[String] $after_firewall = undef,
  Optional[String] $after_software = undef,
  Optional[String] $after_manager_setup = undef,
  Optional[String] $after_autostart = undef,
  Optional[String] $after_authorization_setup = undef,
  Optional[String] $after_messaging_setup = undef,
) inherits ibm_profile {
  easy_type::staged_contain([
    'ibm_profile::mq_machine::sysctl',
    'ibm_profile::mq_machine::limits',
    'ibm_profile::mq_machine::groups_and_users',
    'ibm_profile::mq_machine::packages',
    'ibm_profile::mq_machine::firewall',
    'ibm_profile::mq_machine::software',
    'ibm_profile::mq_machine::manager_setup',
    'ibm_profile::mq_machine::autostart',
    'ibm_profile::mq_machine::authorization_setup',
    'ibm_profile::mq_machine::messaging_setup',
  ])
}
