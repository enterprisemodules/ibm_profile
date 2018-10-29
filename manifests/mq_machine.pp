#++--++
#
# ibm_profile::mq_machine
#
# @summary ## The `ibm_profile::mq_machine` class
# The `ibm_profile::mq_machine` class allows you to get a full fledged MQ setup on your system in a minute. It contains all default settings needed, but you can also tweak it in a lot of ways. It contains the following stages (These are not puppet stages):
# 
# - [`sysctl`](/docs/ibm_profile/mq_machine/sysctl.html)       (Set all required sysctl parameters)
# - [`limits`](/docs/ibm_profile/mq_machine/limits.html)        (Set all required OS limits)
# - [`packages`](/docs/ibm_profile/mq_machine/packages.html)    (Install all required packages)
# - [`groups_and_users`](/docs/ibm_profile/mq_machine/groups_and_users.html) (Create required groups and users)
# - [`firewall`](/docs/ibm_profile/mq_machine/firewall.html)      (Open required firewall rules)
# - [`software`](/docs/ibm_profile/mq_machine/software.html)      (Install required IBM MQ software)
# - [`manager_setup`](/docs/ibm_profile/mq_machine/manager_setup.html) (Configure one or more MQ managers)
# - [`autostart`](/docs/ibm_profile/mq_machine/autostart.html)  (Ensure autostart for the MQ managers)
# - [`authorization_setup`](/docs/ibm_profile/mq_machine/authorization_setup.html) (Setup MQ authorization)
# - [`messaging_setup`](/docs/ibm_profile/mq_machine/messaging_setup.html) (Setup MQ messaging including queues, topics etc.)
# - [`mq_web`](/docs/ibm_profile/mq_machine/mq_web.html) (Enable MQ Web)
# 
# All these stages have a default implementation. This implementation is suitable to get started with. These classed all have parameters you can customize through hiera values. The defaults are specified in the module's `data/default.yaml` file. 
# 
# But sometimes this is not enough and you would like to add some extra definitions, you can, for example, add a Puppet class to be executed after the `systctl` stage is done and before the `limits` is done. You can do this by adding the next line to your yaml data:
# 
# ```yaml
# ibm_profile::mq_machine::before_sysctl:   my_profile::my_extra_class
# ```
# or after:
# 
# ```yaml
# ibm_profile::mq_machine::after_sysctl:   my_profile::my_extra_class
# ```
# 
# If you want to, you can also skip this provided class:
# 
# ```yaml
# ibm_profile::mq_machine::sysctl:   skip
# ```
# 
# Or provide your own implementation:
# 
# ```yaml
# ibm_profile::mq_machine::sysctl:   my_profile::my_own_implementation
# ```
# 
# This mechanism can be used for all named stages and makes it easy to move from an easy setup with a running standard database to a fully customized setup using a lot of your own classes plugged in.
#
# @param [Optional[String]] before_sysctl
#    The name of the class you want to execute directly **before** the `sysctl` class.
#    You can use hiera to set this value. Here is an example:
#    ```yaml
#    ibm_profile::mq_machine::before_sysctl:  my_module::my_class
#    ```
#
# @param [Optional[String]] before_limits
#    The name of the class you want to execute directly **before** the `limits` class.
#    You can use hiera to set this value. Here is an example:
#    ```yaml
#    ibm_profile::mq_machine::before_limits:  my_module::my_class
#    ```
#
# @param [Optional[String]] before_groups_and_users
#    The name of the class you want to execute directly **before** the `groups_and_users` class.
#    You can use hiera to set this value. Here is an example:
#    ```yaml
#    ibm_profile::mq_machine::before_groups_and_users:  my_module::my_class
#    ```
#
# @param [Optional[String]] before_packages
#    The name of the class you want to execute directly **before** the `packages` class.
#    You can use hiera to set this value. Here is an example:
#    ```yaml
#    ibm_profile::mq_machine::before_packages:  my_module::my_class
#    ```
#
# @param [Optional[String]] before_firewall
#    The name of the class you want to execute directly **before** the `firewall` class.
#    You can use hiera to set this value. Here is an example:
#    ```yaml
#    ibm_profile::mq_machine::before_firewall:  my_module::my_class
#    ```
#
# @param [Optional[String]] before_software
#    The name of the class you want to execute directly **before** the `software` class.
#    You can use hiera to set this value. Here is an example:
#    ```yaml
#    ibm_profile::mq_machine::before_software:  my_module::my_class
#    ```
#
# @param [Optional[String]] before_manager_setup
#    The name of the class you want to execute directly **before** the `manager_setup` class.
#    You can use hiera to set this value. Here is an example:
#    ```yaml
#    ibm_profile::mq_machine::before_manager_setup:  my_module::my_class
#    ```
#
# @param [Optional[String]] before_autostart
#    The name of the class you want to execute directly **before** the `autostart` class.
#    You can use hiera to set this value. Here is an example:
#    ```yaml
#    ibm_profile::mq_machine::before_autostart:  my_module::my_class
#    ```
#
# @param [Optional[String]] before_authorization_setup
#    The name of the class you want to execute directly **before** the `authorization` class.
#    You can use hiera to set this value. Here is an example:
#    ```yaml
#    ibm_profile::mq_machine::before_authorization:  my_module::my_class
#    ```
#
# @param [Optional[String]] before_messaging_setup
#    The name of the class you want to execute directly **before** the `messaging_setup` class.
#    You can use hiera to set this value. Here is an example:
#    ```yaml
#    ibm_profile::mq_machine::before_messaging_setup:  my_module::my_class
#    ```
#
# @param [Optional[String]] before_mq_web
#    The name of the class you want to execute directly **before** the `mq_web` class.
#    You can use hiera to set this value. Here is an example:
#    ```yaml
#    ibm_profile::mq_machine::before_mq_web:  my_module::my_class
#    ```
#
# @param [Optional[String]] sysctl
#    Use this value if you want to skip or use your own class for stage `sysctl`.
#    ## Use your own class
#    You can use hiera to set this value. Here is an example:
#    ```yaml
#    ibm_profile::mq_machine::sysctl:  my_module::my_class
#    ```
#    ## Skip
#    You can use hiera to set this value. Here is an example:
#    ```yaml
#    ibm_profile::mq_machine::sysctl:  skip
#    ```
#
# @param [Optional[String]] limits
#    Use this value if you want to skip or use your own class for stage `limits`.
#    ## Use your own class
#    You can use hiera to set this value. Here is an example:
#    ```yaml
#    ibm_profile::mq_machine::limits:  my_module::my_class
#    ```
#    ## Skip
#    You can use hiera to set this value. Here is an example:
#    ```yaml
#    ibm_profile::mq_machine::limits:  skip
#    ```
#
# @param [Optional[String]] groups_and_users
#    Use this value if you want to skip or use your own class for stage `groups_and_users`.
#    ## Use your own class
#    You can use hiera to set this value. Here is an example:
#    ```yaml
#    ibm_profile::mq_machine::groups_and_users:  my_module::my_class
#    ```
#    ## Skip
#    You can use hiera to set this value. Here is an example:
#    ```yaml
#    ibm_profile::mq_machine::groups_and_users:  skip
#    ```
#
# @param [Optional[String]] packages
#    Use this value if you want to skip or use your own class for stage `packages`.
#    ## Use your own class
#    You can use hiera to set this value. Here is an example:
#    ```yaml
#    ibm_profile::mq_machine::packages:  my_module::my_class
#    ```
#    ## Skip
#    You can use hiera to set this value. Here is an example:
#    ```yaml
#    ibm_profile::mq_machine::packages:  skip
#    ```
#
# @param [Optional[String]] firewall
#    Use this value if you want to skip or use your own class for stage `firewall`.
#    ## Use your own class
#    You can use hiera to set this value. Here is an example:
#    ```yaml
#    ibm_profile::mq_machine::firewall:  my_module::my_class
#    ```
#    ## Skip
#    You can use hiera to set this value. Here is an example:
#    ```yaml
#    ibm_profile::mq_machine::firewall:  skip
#    ```
#
# @param [Optional[String]] software
#    Use this value if you want to skip or use your own class for stage `software`.
#    ## Use your own class
#    You can use hiera to set this value. Here is an example:
#    ```yaml
#    ibm_profile::mq_machine::software:  my_module::my_class
#    ```
#    ## Skip
#    You can use hiera to set this value. Here is an example:
#    ```yaml
#    ibm_profile::mq_machine::software:  skip
#    ```
#
# @param [Optional[String]] manager_setup
#    Use this value if you want to skip or use your own class for stage `manager_setup`.
#    ## Use your own class
#    You can use hiera to set this value. Here is an example:
#    ```yaml
#    ibm_profile::mq_machine::manager_setup:  my_module::my_class
#    ```
#    ## Skip
#    You can use hiera to set this value. Here is an example:
#    ```yaml
#    ibm_profile::mq_machine::manager_setup:  skip
#    ```
#
# @param [Optional[String]] autostart
#    Use this value if you want to skip or use your own class for stage `autostart`.
#    ## Use your own class
#    You can use hiera to set this value. Here is an example:
#    ```yaml
#    ibm_profile::mq_machine::autostart:  my_module::my_class
#    ```
#    ## Skip
#    You can use hiera to set this value. Here is an example:
#    ```yaml
#    ibm_profile::mq_machine::autostart:  skip
#    ```
#
# @param [Optional[String]] authorization_setup
#    Use this value if you want to skip or use your own class for stage `authorization_setup`.
#    ## Use your own class
#    You can use hiera to set this value. Here is an example:
#    ```yaml
#    ibm_profile::mq_machine::authorization_setup:  my_module::my_class
#    ```
#    ## Skip
#    You can use hiera to set this value. Here is an example:
#    ```yaml
#    ibm_profile::mq_machine::authorization_setup:  skip
#    ```
#
# @param [Optional[String]] messaging_setup
#    Use this value if you want to skip or use your own class for stage `messaging_setup`.
#    ## Use your own class
#    You can use hiera to set this value. Here is an example:
#    ```yaml
#    ibm_profile::mq_machine::messaging_setup:  my_module::my_class
#    ```
#    ## Skip
#    You can use hiera to set this value. Here is an example:
#    ```yaml
#    ibm_profile::mq_machine::messaging_setup:  skip
#    ```
#
# @param [Optional[String]] mq_web
#    Use this value if you want to skip or use your own class for stage `mq_web`.
#    ## Use your own class
#    You can use hiera to set this value. Here is an example:
#    ```yaml
#    ibm_profile::mq_machine::mq_web:  my_module::my_class
#    ```
#    ## Skip
#    You can use hiera to set this value. Here is an example:
#    ```yaml
#    ibm_profile::mq_machine::mq_web:  skip
#    ```
#
# @param [Optional[String]] after_sysctl
#    The name of the class you want to execute directly **after** the `sysctl` class.
#    You can use hiera to set this value. Here is an example:
#    ```yaml
#    ibm_profile::mq_machine::after_sysctl:  my_module::my_class
#    ```
#
# @param [Optional[String]] after_limits
#    The name of the class you want to execute directly **after** the `limits` class.
#    You can use hiera to set this value. Here is an example:
#    ```yaml
#    ibm_profile::mq_machine::after_limits:  my_module::my_class
#    ```
#
# @param [Optional[String]] after_groups_and_users
#    The name of the class you want to execute directly **after** the `groups_and_users` class.
#    You can use hiera to set this value. Here is an example:
#    ```yaml
#    ibm_profile::mq_machine::after_groups_and_users:  my_module::my_class
#    ```
#
# @param [Optional[String]] after_packages
#    The name of the class you want to execute directly **after** the `packages` class.
#    You can use hiera to set this value. Here is an example:
#    ```yaml
#    ibm_profile::mq_machine::after_packages:  my_module::my_class
#    ```
#
# @param [Optional[String]] after_firewall
#    The name of the class you want to execute directly **after** the `firewall` class.
#    You can use hiera to set this value. Here is an example:
#    ```yaml
#    ibm_profile::mq_machine::after_firewall:  my_module::my_class
#    ```
#
# @param [Optional[String]] after_software
#    The name of the class you want to execute directly **after** the `software` class.
#    You can use hiera to set this value. Here is an example:
#    ```yaml
#    ibm_profile::mq_machine::after_software:  my_module::my_class
#    ```
#
# @param [Optional[String]] after_manager_setup
#    The name of the class you want to execute directly **after** the `manager_setup` class.
#    You can use hiera to set this value. Here is an example:
#    ```yaml
#    ibm_profile::mq_machine::after_manager_setup:  my_module::my_class
#    ```
#
# @param [Optional[String]] after_autostart
#    The name of the class you want to execute directly **after** the `autostart` class.
#    You can use hiera to set this value. Here is an example:
#    ```yaml
#    ibm_profile::mq_machine::after_autostart:  my_module::my_class
#    ```
#
# @param [Optional[String]] after_authorization_setup
#    The name of the class you want to execute directly **after** the `authorization_setup` class.
#    You can use hiera to set this value. Here is an example:
#    ```yaml
#    ibm_profile::mq_machine::after_authorization_setup:  my_module::my_class
#    ```
#
# @param [Optional[String]] after_messaging_setup
#    The name of the class you want to execute directly **after** the `messaging_setup` class.
#    You can use hiera to set this value. Here is an example:
#    ```yaml
#    ibm_profile::mq_machine::after_messaging_setup:  my_module::my_class
#    ```
#
# @param [Optional[String]] after_mq_web
#    The name of the class you want to execute directly **after** the `mq_web` class.
#    You can use hiera to set this value. Here is an example:
#    ```yaml
#    ibm_profile::mq_machine::after_mq_web:  my_module::my_class
#    ```
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
  Optional[String] $before_mq_web = undef,
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
  Optional[String] $mq_web = undef,
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
  Optional[String] $after_mq_web = undef,
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
    'ibm_profile::mq_machine::mq_web',
  ])
}
