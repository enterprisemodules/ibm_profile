#
# ibm_profile::iib_machine
#
# @summary Besides setting up MQ, the `ibm_profile` module also has support for setting up IBM Integration Bus (IIB).
# The `ibm_profile::iib_machine` class allows you to get a full fledged IIB setup on your system in a minute. It contains all default settings needed, but you can also tweak it in a lot of ways. It contains the following stages (These are not puppet stages):
# 
# - [`sysctl`](/docs/ibm_profile/iib_machine/sysctl.html)                   (Set all required sysctl parameters)
# - [`limits`](/docs/ibm_profile/iib_machine/limits.html)                   (Set all required OS limits)
# - [`packages`](/docs/ibm_profile/iib_machine/packages.html)               (Install all required packages
# - [`groups_and_users`](/docs/ibm_profile/iib_machine/groups_and_users.html) (Create required groups and users)
# - [`firewall`](/docs/ibm_profile/iib_machine/firewall.html)                 (Open required firewall rules)
# - [`software`](/docs/ibm_profile/iib_machine/software.html)                 (Install required IBM MQ software)
# - [`broker_setup`](/docs/ibm_profile/iib_machine/broker_setup.html)         (Setup the IIB broker(s))
# - [`server_setup`](/docs/ibm_profile/iib_machine/server_setup.html)         (Setup ths IIB server(s))
# - [`deployments`](/docs/ibm_profile/iib_machine/deployments.html)           (Manage the deployments)
# - [`autostart`](/docs/ibm_profile/iib_machine/autostart.html)               (Ensure autostart for the IIB brokers)
# 
# All these stages have a default implementation. This implementation is suitable to get started with. These classed all have parameters you can customize through hiera values. The defaults are specified in the module's `data/default.yaml` file. 
# 
# But sometimes this is not enough and you would like to add some extra definitions, you can, for example, add a Puppet class to be executed after the `systctl` stage is done and before the `limits` is done. You can do this by adding the next line to your yaml data:
# 
# ```yaml
# ibm_profile::iib_machine::before_sysctl:   my_profile::my_extra_class
# ```
# or after:
# 
# ```yaml
# ibm_profile::iib_machine::after_sysctl:   my_profile::my_extra_class
# ```
# 
# If you want to, you can also skip this provided class:
# 
# ```yaml
# ibm_profile::iib_machine::sysctl:   skip
# ```
# 
# Or provide your own implementation:
# 
# ```yaml
# ibm_profile::iib_machine::sysctl:   my_profile::my_own_implementation
# ```
# 
# This mechanism can be used for all named stages and makes it easy to move from an easy setup with a running standard database to a fully customized setup using a lot of your own classes plugged in.
#
# @param [Optional[String]] before_sysctl
#    The name of the class you want to execute directly **before** the `sysctl` class.
#    You can use hiera to set this value. Here is an example:
#    ```yaml
#    ibm_profile::iib_machine::before_sysctl:  my_module::my_class
#    ```
#
# @param [Optional[String]] before_limits
#    The name of the class you want to execute directly **before** the `limits` class.
#    You can use hiera to set this value. Here is an example:
#    ```yaml
#    ibm_profile::iib_machine::before_limits:  my_module::my_class
#    ```
#
# @param [Optional[String]] before_groups_and_users
#    The name of the class you want to execute directly **before** the `groups_and_users` class.
#    You can use hiera to set this value. Here is an example:
#    ```yaml
#    ibm_profile::iib_machine::before_groups_and_users:  my_module::my_class
#    ```
#
# @param [Optional[String]] before_packages
#    The name of the class you want to execute directly **before** the `packages` class.
#    You can use hiera to set this value. Here is an example:
#    ```yaml
#    ibm_profile::iib_machine::before_packages:  my_module::my_class
#    ```
#
# @param [Optional[String]] before_firewall
#    The name of the class you want to execute directly **before** the `firewall` class.
#    You can use hiera to set this value. Here is an example:
#    ```yaml
#    ibm_profile::iib_machine::before_firewall:  my_module::my_class
#    ```
#
# @param [Optional[String]] before_software
#    The name of the class you want to execute directly **before** the `software` class.
#    You can use hiera to set this value. Here is an example:
#    ```yaml
#    ibm_profile::iib_machine::before_software:  my_module::my_class
#    ```
#
# @param [Optional[String]] before_broker_setup
#    The name of the class you want to execute directly **before** the `broker_setup` class.
#    You can use hiera to set this value. Here is an example:
#    ```yaml
#    ibm_profile::iib_machine::before_broker_setup:  my_module::my_class
#    ```
#
# @param [Optional[String]] before_server_setup
#    The name of the class you want to execute directly **before** the `server_setup` class.
#    You can use hiera to set this value. Here is an example:
#    ```yaml
#    ibm_profile::iib_machine::before_server_setup:  my_module::my_class
#    ```
#
# @param [Optional[String]] before_deployments
#    The name of the class you want to execute directly **before** the `deployments` class.
#    You can use hiera to set this value. Here is an example:
#    ```yaml
#    ibm_profile::iib_machine::before_deployments:  my_module::my_class
#    ```
#
# @param [Optional[String]] before_autostart
#    The name of the class you want to execute directly **before** the `autostart` class.
#    You can use hiera to set this value. Here is an example:
#    ```yaml
#    ibm_profile::iib_machine::before_autostart:  my_module::my_class
#    ```
#
# @param [Optional[String]] sysctl
#    Use this value if you want to skip or use your own class for stage `sysctl`.
#    ## Use your own class
#    You can use hiera to set this value. Here is an example:
#    ```yaml
#    ibm_profile::iib_machine::sysctl:  my_module::my_class
#    ```
#    ## Skip
#    You can use hiera to set this value. Here is an example:
#    ```yaml
#    ibm_profile::iib_machine::sysctl:  skip
#    ```
#
# @param [Optional[String]] limits
#    Use this value if you want to skip or use your own class for stage `limits`.
#    ## Use your own class
#    You can use hiera to set this value. Here is an example:
#    ```yaml
#    ibm_profile::iib_machine::limits:  my_module::my_class
#    ```
#    ## Skip
#    You can use hiera to set this value. Here is an example:
#    ```yaml
#    ibm_profile::iib_machine::limits:  skip
#    ```
#
# @param [Optional[String]] groups_and_users
#    Use this value if you want to skip or use your own class for stage `groups_and_users`.
#    ## Use your own class
#    You can use hiera to set this value. Here is an example:
#    ```yaml
#    ibm_profile::iib_machine::groups_and_users:  my_module::my_class
#    ```
#    ## Skip
#    You can use hiera to set this value. Here is an example:
#    ```yaml
#    ibm_profile::iib_machine::groups_and_users:  skip
#    ```
#
# @param [Optional[String]] packages
#    Use this value if you want to skip or use your own class for stage `packages`.
#    ## Use your own class
#    You can use hiera to set this value. Here is an example:
#    ```yaml
#    ibm_profile::iib_machine::packages:  my_module::my_class
#    ```
#    ## Skip
#    You can use hiera to set this value. Here is an example:
#    ```yaml
#    ibm_profile::iib_machine::packages:  skip
#    ```
#
# @param [Optional[String]] firewall
#    Use this value if you want to skip or use your own class for stage `firewall`.
#    ## Use your own class
#    You can use hiera to set this value. Here is an example:
#    ```yaml
#    ibm_profile::iib_machine::firewall:  my_module::my_class
#    ```
#    ## Skip
#    You can use hiera to set this value. Here is an example:
#    ```yaml
#    ibm_profile::iib_machine::firewall:  skip
#    ```
#
# @param [Optional[String]] software
#    Use this value if you want to skip or use your own class for stage `software`.
#    ## Use your own class
#    You can use hiera to set this value. Here is an example:
#    ```yaml
#    ibm_profile::iib_machine::software:  my_module::my_class
#    ```
#    ## Skip
#    You can use hiera to set this value. Here is an example:
#    ```yaml
#    ibm_profile::iib_machine::software:  skip
#    ```
#
# @param [Optional[String]] server_setup
#    Use this value if you want to skip or use your own class for stage `server_setup`.
#    ## Use your own class
#    You can use hiera to set this value. Here is an example:
#    ```yaml
#    ibm_profile::iib_machine::server_setup:  my_module::my_class
#    ```
#    ## Skip
#    You can use hiera to set this value. Here is an example:
#    ```yaml
#    ibm_profile::iib_machine::server_setup:  skip
#    ```
#
# @param [Optional[String]] broker_setup
#    Use this value if you want to skip or use your own class for stage `broker_setup`.
#    ## Use your own class
#    You can use hiera to set this value. Here is an example:
#    ```yaml
#    ibm_profile::iib_machine::broker_setup:  my_module::my_class
#    ```
#    ## Skip
#    You can use hiera to set this value. Here is an example:
#    ```yaml
#    ibm_profile::iib_machine::broker_setup:  skip
#    ```
#
# @param [Optional[String]] deployments
#    Use this value if you want to skip or use your own class for stage `deployments`.
#    ## Use your own class
#    You can use hiera to set this value. Here is an example:
#    ```yaml
#    ibm_profile::iib_machine::deployments:  my_module::my_class
#    ```
#    ## Skip
#    You can use hiera to set this value. Here is an example:
#    ```yaml
#    ibm_profile::iib_machine::deployments:  skip
#    ```
#
# @param [Optional[String]] autostart
#    Use this value if you want to skip or use your own class for stage `autostart`.
#    ## Use your own class
#    You can use hiera to set this value. Here is an example:
#    ```yaml
#    ibm_profile::iib_machine::autostart:  my_module::my_class
#    ```
#    ## Skip
#    You can use hiera to set this value. Here is an example:
#    ```yaml
#    ibm_profile::iib_machine::autostart:  skip
#    ```
#
# @param [Optional[String]] after_sysctl
#    The name of the class you want to execute directly **after** the `sysctl` class.
#    You can use hiera to set this value. Here is an example:
#    ```yaml
#    ibm_profile::iib_machine::after_sysctl:  my_module::my_class
#    ```
#
# @param [Optional[String]] after_limits
#    The name of the class you want to execute directly **after** the `limits` class.
#    You can use hiera to set this value. Here is an example:
#    ```yaml
#    ibm_profile::iib_machine::after_limits:  my_module::my_class
#    ```
#
# @param [Optional[String]] after_groups_and_users
#    The name of the class you want to execute directly **after** the `groups_and_users` class.
#    You can use hiera to set this value. Here is an example:
#    ```yaml
#    ibm_profile::iib_machine::after_groups_and_users:  my_module::my_class
#    ```
#
# @param [Optional[String]] after_packages
#    The name of the class you want to execute directly **after** the `packages` class.
#    You can use hiera to set this value. Here is an example:
#    ```yaml
#    ibm_profile::iib_machine::after_packages:  my_module::my_class
#    ```
#
# @param [Optional[String]] after_firewall
#    The name of the class you want to execute directly **after** the `firewall` class.
#    You can use hiera to set this value. Here is an example:
#    ```yaml
#    ibm_profile::iib_machine::after_firewall:  my_module::my_class
#    ```
#
# @param [Optional[String]] after_software
#    The name of the class you want to execute directly **after** the `software` class.
#    You can use hiera to set this value. Here is an example:
#    ```yaml
#    ibm_profile::iib_machine::after_software:  my_module::my_class
#    ```
#
# @param [Optional[String]] after_broker_setup
#    The name of the class you want to execute directly **after** the `broker_setup` class.
#    You can use hiera to set this value. Here is an example:
#    ```yaml
#    ibm_profile::iib_machine::after_broker_setup:  my_module::my_class
#    ```
#
# @param [Optional[String]] after_server_setup
#    The name of the class you want to execute directly **after** the `server_setup` class.
#    You can use hiera to set this value. Here is an example:
#    ```yaml
#    ibm_profile::iib_machine::after_server_setup:  my_module::my_class
#    ```
#
# @param [Optional[String]] after_deployments
#    The name of the class you want to execute directly **after** the `deployments` class.
#    You can use hiera to set this value. Here is an example:
#    ```yaml
#    ibm_profile::iib_machine::after_deployments:  my_module::my_class
#    ```
#
# @param [Optional[String]] after_autostart
#    The name of the class you want to execute directly **after** the `autostart` class.
#    You can use hiera to set this value. Here is an example:
#    ```yaml
#    ibm_profile::iib_machine::after_autostart:  my_module::my_class
#    ```
#
#
# See the file "LICENSE" for the full license governing this code.
#
class ibm_profile::iib_machine (
  Optional[String] $after_autostart = undef,
  Optional[String] $after_broker_setup = undef,
  Optional[String] $after_deployments = undef,
  Optional[String] $after_em_license = undef,
  Optional[String] $after_firewall = undef,
  Optional[String] $after_groups_and_users = undef,
  Optional[String] $after_limits = undef,
  Optional[String] $after_packages = undef,
  Optional[String] $after_server_setup = undef,
  Optional[String] $after_software = undef,
  Optional[String] $after_sysctl = undef,
  Optional[String] $autostart = undef,
  Optional[String] $before_autostart = undef,
  Optional[String] $before_broker_setup = undef,
  Optional[String] $before_deployments = undef,
  Optional[String] $before_em_license = undef,
  Optional[String] $before_firewall = undef,
  Optional[String] $before_groups_and_users = undef,
  Optional[String] $before_limits = undef,
  Optional[String] $before_packages = undef,
  Optional[String] $before_server_setup = undef,
  Optional[String] $before_software = undef,
  Optional[String] $before_sysctl = undef,
  Optional[String] $broker_setup = undef,
  Optional[String] $deployments = undef,
  Optional[String] $em_license = undef,
  Optional[String] $firewall = undef,
  Optional[String] $groups_and_users = undef,
  Optional[String] $limits = undef,
  Optional[String] $packages = undef,
  Optional[String] $server_setup = undef,
  Optional[String] $software = undef,
  Optional[String] $sysctl = undef
) inherits ibm_profile {
  $is_linux = $facts['kernel'] == 'Linux'

  easy_type::ordered_steps([
      'ibm_profile::em_license',
      ['ibm_profile::iib_machine::sysctl', { 'onlyif' => $is_linux, 'implementation' => 'easy_type::profile::sysctl' }],
      ['ibm_profile::iib_machine::limits', { 'onlyif' => $is_linux, 'implementation' => 'easy_type::profile::limits' }],
      ['ibm_profile::iib_machine::groups_and_users', { 'implementation' => 'easy_type::profile::groups_and_users' }],
      ['ibm_profile::iib_machine::packages', { 'onlyif' => $is_linux, 'implementation' => 'easy_type::profile::packages' }],
      ['ibm_profile::iib_machine::firewall', { 'onlyif' => $is_linux, 'implementation' => 'easy_type::profile::firewall' }],
      'ibm_profile::iib_machine::software',
      'ibm_profile::iib_machine::broker_setup',
      'ibm_profile::iib_machine::server_setup',
      'ibm_profile::iib_machine::deployments',
      'ibm_profile::iib_machine::autostart',
  ])
}
