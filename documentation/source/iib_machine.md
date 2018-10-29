Besides setting up MQ, the `ibm_profile` module also has support for setting up IBM Integration Bus (IIB). The `ibm_profile::iib_machine` class allows you to get a full fledged IIB setup on your system in a minute. It contains all default settings needed, but you can also tweak it in a lot of ways. It contains the following stages (These are not puppet stages):

- [`sysctl`](/docs/ibm_profile/iib_machine/sysctl.html)                   (Set all required sysctl parameters)
- [`limits`](/docs/ibm_profile/iib_machine/limits.html)                   (Set all required OS limits)
- [`packages`](/docs/ibm_profile/iib_machine/packages.html)               (Install all required packages
- [`groups_and_users`](/docs/ibm_profile/iib_machine/groups_and_users.html) (Create required groups and users)
- [`firewall`](/docs/ibm_profile/iib_machine/firewall.html)                 (Open required firewall rules)
- [`software`](/docs/ibm_profile/iib_machine/software.html)                 (Install required IBM MQ software)
- [`broker_setup`](/docs/ibm_profile/iib_machine/broker_setup.html)         (Setup the IIB broker(s))
- [`server_setup`](/docs/ibm_profile/iib_machine/server_setup.html)         (Setup ths IIB server(s))
- [`deployments`](/docs/ibm_profile/iib_machine/deployments.html)           (Manage the deployments)
- [`autostart`](/docs/ibm_profile/iib_machine/autostart.html)               (Ensure autostart for the IIB brokers)

All these stages have a default implementation. This implementation is suitable to get started with. These classed all have parameters you can customize through hiera values. The defaults are specified in the module's `data/default.yaml` file. 

But sometimes this is not enough and you would like to add some extra definitions, you can, for example, add a Puppet class to be executed after the `systctl` stage is done and before the `limits` is done. You can do this by adding the next line to your yaml data:

```yaml
ibm_profile::iib_machine::before_sysctl:   my_profile::my_extra_class
```
or after:

```yaml
ibm_profile::iib_machine::after_sysctl:   my_profile::my_extra_class
```

If you want to, you can also skip this provided class:

```yaml
ibm_profile::iib_machine::sysctl:   skip
```

Or provide your own implementation:

```yaml
ibm_profile::iib_machine::sysctl:   my_profile::my_own_implementation
```

This mechanism can be used for all named stages and makes it easy to move from an easy setup with a running standard database to a fully customized setup using a lot of your own classes plugged in.




<%- include_attributes [
  :before_sysctl,
  :before_limits,
  :before_groups_and_users,
  :before_packages,
  :before_firewall,
  :before_software,
  :before_broker_setup,
  :before_server_setup,
  :before_deployments,
  :before_autostart,
  :sysctl,
  :limits,
  :groups_and_users,
  :packages,
  :firewall,
  :software,
  :server_setup,
  :broker_setup,
  :deployments,
  :autostart,
  :after_sysctl,
  :after_limits,
  :after_groups_and_users,
  :after_packages,
  :after_firewall,
  :after_software,
  :after_broker_setup,
  :after_server_setup,
  :after_deployments,
  :after_autostart,
] %>

