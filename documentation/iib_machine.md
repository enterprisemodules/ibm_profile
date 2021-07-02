---
title: iib machine
keywords: documentation
layout: documentation
sidebar: ibm_profile_sidebar
toc: false
---
## Overview

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









## Experience the Power of Puppet for IBM MQ

If you want to play and experiment with Puppet and IBM MQ, please take a look at our playgrounds. At our playgrounds, we provide you with a pre-installed environment, where you experiment fast and easy.

{% include super_hero.html title="For IBM MQ" ref="/playgrounds#mq" %}


## Attributes



Attribute Name                                                  | Short Description                                                                           |
--------------------------------------------------------------- | ------------------------------------------------------------------------------------------- |
[after_autostart](#iib_machine_after_autostart)                 | The name of the class you want to execute directly **after** the `autostart` class.         |
[after_broker_setup](#iib_machine_after_broker_setup)           | The name of the class you want to execute directly **after** the `broker_setup` class.      |
[after_deployments](#iib_machine_after_deployments)             | The name of the class you want to execute directly **after** the `deployments` class.       |
[after_firewall](#iib_machine_after_firewall)                   | The name of the class you want to execute directly **after** the `firewall` class.          |
[after_groups_and_users](#iib_machine_after_groups_and_users)   | The name of the class you want to execute directly **after** the `groups_and_users` class.  |
[after_limits](#iib_machine_after_limits)                       | The name of the class you want to execute directly **after** the `limits` class.            |
[after_packages](#iib_machine_after_packages)                   | The name of the class you want to execute directly **after** the `packages` class.          |
[after_server_setup](#iib_machine_after_server_setup)           | The name of the class you want to execute directly **after** the `server_setup` class.      |
[after_software](#iib_machine_after_software)                   | The name of the class you want to execute directly **after** the `software` class.          |
[after_sysctl](#iib_machine_after_sysctl)                       | The name of the class you want to execute directly **after** the `sysctl` class.            |
[autostart](#iib_machine_autostart)                             | Use this value if you want to skip or use your own class for stage `autostart`.             |
[before_autostart](#iib_machine_before_autostart)               | The name of the class you want to execute directly **before** the `autostart` class.        |
[before_broker_setup](#iib_machine_before_broker_setup)         | The name of the class you want to execute directly **before** the `broker_setup` class.     |
[before_deployments](#iib_machine_before_deployments)           | The name of the class you want to execute directly **before** the `deployments` class.      |
[before_firewall](#iib_machine_before_firewall)                 | The name of the class you want to execute directly **before** the `firewall` class.         |
[before_groups_and_users](#iib_machine_before_groups_and_users) | The name of the class you want to execute directly **before** the `groups_and_users` class. |
[before_limits](#iib_machine_before_limits)                     | The name of the class you want to execute directly **before** the `limits` class.           |
[before_packages](#iib_machine_before_packages)                 | The name of the class you want to execute directly **before** the `packages` class.         |
[before_server_setup](#iib_machine_before_server_setup)         | The name of the class you want to execute directly **before** the `server_setup` class.     |
[before_software](#iib_machine_before_software)                 | The name of the class you want to execute directly **before** the `software` class.         |
[before_sysctl](#iib_machine_before_sysctl)                     | The name of the class you want to execute directly **before** the `sysctl` class.           |
[broker_setup](#iib_machine_broker_setup)                       | Use this value if you want to skip or use your own class for stage `broker_setup`.          |
[deployments](#iib_machine_deployments)                         | Use this value if you want to skip or use your own class for stage `deployments`.           |
[firewall](#iib_machine_firewall)                               | Use this value if you want to skip or use your own class for stage `firewall`.              |
[groups_and_users](#iib_machine_groups_and_users)               | Use this value if you want to skip or use your own class for stage `groups_and_users`.      |
[limits](#iib_machine_limits)                                   | Use this value if you want to skip or use your own class for stage `limits`.                |
[packages](#iib_machine_packages)                               | Use this value if you want to skip or use your own class for stage `packages`.              |
[server_setup](#iib_machine_server_setup)                       | Use this value if you want to skip or use your own class for stage `server_setup`.          |
[software](#iib_machine_software)                               | Use this value if you want to skip or use your own class for stage `software`.              |
[sysctl](#iib_machine_sysctl)                                   | Use this value if you want to skip or use your own class for stage `sysctl`.                |




### before_sysctl<a name='iib_machine_before_sysctl'>

The name of the class you want to execute directly **before** the `sysctl` class.

You can use hiera to set this value. Here is an example:

```yaml
ibm_profile::iib_machine::before_sysctl:  my_module::my_class
```

Type: `Optional[String]`

Default:`undef`

[Back to overview of iib_machine](#attributes)

### before_limits<a name='iib_machine_before_limits'>

The name of the class you want to execute directly **before** the `limits` class.

You can use hiera to set this value. Here is an example:

```yaml
ibm_profile::iib_machine::before_limits:  my_module::my_class
```

Type: `Optional[String]`

Default:`undef`

[Back to overview of iib_machine](#attributes)

### before_groups_and_users<a name='iib_machine_before_groups_and_users'>

The name of the class you want to execute directly **before** the `groups_and_users` class.

You can use hiera to set this value. Here is an example:

```yaml
ibm_profile::iib_machine::before_groups_and_users:  my_module::my_class
```

Type: `Optional[String]`

Default:`undef`

[Back to overview of iib_machine](#attributes)

### before_packages<a name='iib_machine_before_packages'>

The name of the class you want to execute directly **before** the `packages` class.

You can use hiera to set this value. Here is an example:

```yaml
ibm_profile::iib_machine::before_packages:  my_module::my_class
```

Type: `Optional[String]`

Default:`undef`

[Back to overview of iib_machine](#attributes)

### before_firewall<a name='iib_machine_before_firewall'>

The name of the class you want to execute directly **before** the `firewall` class.

You can use hiera to set this value. Here is an example:

```yaml
ibm_profile::iib_machine::before_firewall:  my_module::my_class
```

Type: `Optional[String]`

Default:`undef`

[Back to overview of iib_machine](#attributes)

### before_software<a name='iib_machine_before_software'>

The name of the class you want to execute directly **before** the `software` class.

You can use hiera to set this value. Here is an example:

```yaml
ibm_profile::iib_machine::before_software:  my_module::my_class
```

Type: `Optional[String]`

Default:`undef`

[Back to overview of iib_machine](#attributes)

### before_broker_setup<a name='iib_machine_before_broker_setup'>

The name of the class you want to execute directly **before** the `broker_setup` class.

You can use hiera to set this value. Here is an example:

```yaml
ibm_profile::iib_machine::before_broker_setup:  my_module::my_class
```

Type: `Optional[String]`

Default:`undef`

[Back to overview of iib_machine](#attributes)

### before_server_setup<a name='iib_machine_before_server_setup'>

The name of the class you want to execute directly **before** the `server_setup` class.

You can use hiera to set this value. Here is an example:

```yaml
ibm_profile::iib_machine::before_server_setup:  my_module::my_class
```

Type: `Optional[String]`

Default:`undef`

[Back to overview of iib_machine](#attributes)

### before_deployments<a name='iib_machine_before_deployments'>

The name of the class you want to execute directly **before** the `deployments` class.

You can use hiera to set this value. Here is an example:

```yaml
ibm_profile::iib_machine::before_deployments:  my_module::my_class
```

Type: `Optional[String]`

Default:`undef`

[Back to overview of iib_machine](#attributes)

### before_autostart<a name='iib_machine_before_autostart'>

The name of the class you want to execute directly **before** the `autostart` class.

You can use hiera to set this value. Here is an example:

```yaml
ibm_profile::iib_machine::before_autostart:  my_module::my_class
```

Type: `Optional[String]`

Default:`undef`

[Back to overview of iib_machine](#attributes)

### sysctl<a name='iib_machine_sysctl'>

Use this value if you want to skip or use your own class for stage `sysctl`.

## Use your own class

You can use hiera to set this value. Here is an example:

```yaml
ibm_profile::iib_machine::sysctl:  my_module::my_class
```

## Skip

You can use hiera to set this value. Here is an example:

```yaml
ibm_profile::iib_machine::sysctl:  skip
```
Type: `Optional[String]`

Default:`undef`

[Back to overview of iib_machine](#attributes)

### limits<a name='iib_machine_limits'>

Use this value if you want to skip or use your own class for stage `limits`.

## Use your own class

You can use hiera to set this value. Here is an example:

```yaml
ibm_profile::iib_machine::limits:  my_module::my_class
```

## Skip

You can use hiera to set this value. Here is an example:

```yaml
ibm_profile::iib_machine::limits:  skip
```
Type: `Optional[String]`

Default:`undef`

[Back to overview of iib_machine](#attributes)

### groups_and_users<a name='iib_machine_groups_and_users'>

Use this value if you want to skip or use your own class for stage `groups_and_users`.

## Use your own class

You can use hiera to set this value. Here is an example:

```yaml
ibm_profile::iib_machine::groups_and_users:  my_module::my_class
```

## Skip

You can use hiera to set this value. Here is an example:

```yaml
ibm_profile::iib_machine::groups_and_users:  skip
```
Type: `Optional[String]`

Default:`undef`

[Back to overview of iib_machine](#attributes)

### packages<a name='iib_machine_packages'>

Use this value if you want to skip or use your own class for stage `packages`.

## Use your own class

You can use hiera to set this value. Here is an example:

```yaml
ibm_profile::iib_machine::packages:  my_module::my_class
```

## Skip

You can use hiera to set this value. Here is an example:

```yaml
ibm_profile::iib_machine::packages:  skip
```
Type: `Optional[String]`

Default:`undef`

[Back to overview of iib_machine](#attributes)

### firewall<a name='iib_machine_firewall'>

Use this value if you want to skip or use your own class for stage `firewall`.

## Use your own class

You can use hiera to set this value. Here is an example:

```yaml
ibm_profile::iib_machine::firewall:  my_module::my_class
```

## Skip

You can use hiera to set this value. Here is an example:

```yaml
ibm_profile::iib_machine::firewall:  skip
```
Type: `Optional[String]`

Default:`undef`

[Back to overview of iib_machine](#attributes)

### software<a name='iib_machine_software'>

Use this value if you want to skip or use your own class for stage `software`.

## Use your own class

You can use hiera to set this value. Here is an example:

```yaml
ibm_profile::iib_machine::software:  my_module::my_class
```

## Skip

You can use hiera to set this value. Here is an example:

```yaml
ibm_profile::iib_machine::software:  skip
```
Type: `Optional[String]`

Default:`undef`

[Back to overview of iib_machine](#attributes)

### server_setup<a name='iib_machine_server_setup'>

Use this value if you want to skip or use your own class for stage `server_setup`.

## Use your own class

You can use hiera to set this value. Here is an example:

```yaml
ibm_profile::iib_machine::server_setup:  my_module::my_class
```

## Skip

You can use hiera to set this value. Here is an example:

```yaml
ibm_profile::iib_machine::server_setup:  skip
```
Type: `Optional[String]`

Default:`undef`

[Back to overview of iib_machine](#attributes)

### broker_setup<a name='iib_machine_broker_setup'>

Use this value if you want to skip or use your own class for stage `broker_setup`.

## Use your own class

You can use hiera to set this value. Here is an example:

```yaml
ibm_profile::iib_machine::broker_setup:  my_module::my_class
```

## Skip

You can use hiera to set this value. Here is an example:

```yaml
ibm_profile::iib_machine::broker_setup:  skip
```
Type: `Optional[String]`

Default:`undef`

[Back to overview of iib_machine](#attributes)

### deployments<a name='iib_machine_deployments'>

Use this value if you want to skip or use your own class for stage `deployments`.

## Use your own class

You can use hiera to set this value. Here is an example:

```yaml
ibm_profile::iib_machine::deployments:  my_module::my_class
```

## Skip

You can use hiera to set this value. Here is an example:

```yaml
ibm_profile::iib_machine::deployments:  skip
```
Type: `Optional[String]`

Default:`undef`

[Back to overview of iib_machine](#attributes)

### autostart<a name='iib_machine_autostart'>

Use this value if you want to skip or use your own class for stage `autostart`.

## Use your own class

You can use hiera to set this value. Here is an example:

```yaml
ibm_profile::iib_machine::autostart:  my_module::my_class
```

## Skip

You can use hiera to set this value. Here is an example:

```yaml
ibm_profile::iib_machine::autostart:  skip
```
Type: `Optional[String]`

Default:`undef`

[Back to overview of iib_machine](#attributes)

### after_sysctl<a name='iib_machine_after_sysctl'>

The name of the class you want to execute directly **after** the `sysctl` class.

You can use hiera to set this value. Here is an example:

```yaml
ibm_profile::iib_machine::after_sysctl:  my_module::my_class
```

Type: `Optional[String]`

Default:`undef`

[Back to overview of iib_machine](#attributes)

### after_limits<a name='iib_machine_after_limits'>

The name of the class you want to execute directly **after** the `limits` class.

You can use hiera to set this value. Here is an example:

```yaml
ibm_profile::iib_machine::after_limits:  my_module::my_class
```

Type: `Optional[String]`

Default:`undef`

[Back to overview of iib_machine](#attributes)

### after_groups_and_users<a name='iib_machine_after_groups_and_users'>

The name of the class you want to execute directly **after** the `groups_and_users` class.

You can use hiera to set this value. Here is an example:

```yaml
ibm_profile::iib_machine::after_groups_and_users:  my_module::my_class
```

Type: `Optional[String]`

Default:`undef`

[Back to overview of iib_machine](#attributes)

### after_packages<a name='iib_machine_after_packages'>

The name of the class you want to execute directly **after** the `packages` class.

You can use hiera to set this value. Here is an example:

```yaml
ibm_profile::iib_machine::after_packages:  my_module::my_class
```

Type: `Optional[String]`

Default:`undef`

[Back to overview of iib_machine](#attributes)

### after_firewall<a name='iib_machine_after_firewall'>

The name of the class you want to execute directly **after** the `firewall` class.

You can use hiera to set this value. Here is an example:

```yaml
ibm_profile::iib_machine::after_firewall:  my_module::my_class
```

Type: `Optional[String]`

Default:`undef`

[Back to overview of iib_machine](#attributes)

### after_software<a name='iib_machine_after_software'>

The name of the class you want to execute directly **after** the `software` class.

You can use hiera to set this value. Here is an example:

```yaml
ibm_profile::iib_machine::after_software:  my_module::my_class
```

Type: `Optional[String]`

Default:`undef`

[Back to overview of iib_machine](#attributes)

### after_broker_setup<a name='iib_machine_after_broker_setup'>

The name of the class you want to execute directly **after** the `broker_setup` class.

You can use hiera to set this value. Here is an example:

```yaml
ibm_profile::iib_machine::after_broker_setup:  my_module::my_class
```

Type: `Optional[String]`

Default:`undef`

[Back to overview of iib_machine](#attributes)

### after_server_setup<a name='iib_machine_after_server_setup'>

The name of the class you want to execute directly **after** the `server_setup` class.

You can use hiera to set this value. Here is an example:

```yaml
ibm_profile::iib_machine::after_server_setup:  my_module::my_class
```

Type: `Optional[String]`

Default:`undef`

[Back to overview of iib_machine](#attributes)

### after_deployments<a name='iib_machine_after_deployments'>

The name of the class you want to execute directly **after** the `deployments` class.

You can use hiera to set this value. Here is an example:

```yaml
ibm_profile::iib_machine::after_deployments:  my_module::my_class
```

Type: `Optional[String]`

Default:`undef`

[Back to overview of iib_machine](#attributes)

### after_autostart<a name='iib_machine_after_autostart'>

The name of the class you want to execute directly **after** the `autostart` class.

You can use hiera to set this value. Here is an example:

```yaml
ibm_profile::iib_machine::after_autostart:  my_module::my_class
```

Type: `Optional[String]`

Default:`undef`

[Back to overview of iib_machine](#attributes)
