---
title: mq machine
keywords: documentation
layout: documentation
sidebar: ibm_profile_sidebar
toc: false
---
## Overview


This is a highly customizable Puppet profile class to define a WebLogic Software and its requirements on your system. At its core just adding:

```
contain ibm_profile::weblogic
```

Is enough to get a WebLogic 12.2.1.3 installed on your system.

But sometimes you have specific uses cases that are not handled well by the standard classes. This profile class allows you to add your own code to the execution.

## Stages

Defining and starting a WebLogic Admin Server on you system goes through several stages(These are not puppet stages):

- [`sysctl`](/docs/ibm_profile/sysctl.html)            Set required sysctl parameters
- [`limits`](/docs/ibm_profile/limits.html)            Set OS security limits
- [`packages`](/docs/ibm_profile/packages.html)          Install required packages
- [`groups_and_users`](/docs/ibm_profile/groups_and_users.html)  Create required OS users and groups
- [`ssh_setup`](/docs/ibm_profile/ssh_setup.html)         Setup SSH for accounts
- [`firewall`](/docs/ibm_profile/firewall.html)          Setup the firewall
- [`java_software`](/docs/ibm_profile/java_software.html)     Install the java software
- [`wls_software`](/docs/ibm_profile/wls_software.html)      Install the WebLogic software
- [`wls_patches`](/docs/ibm_profile/wls_patches.html)       Install the WebLogic patches

All these stages have a default implementation. This implementation is suitable to get started with. These classed all have parameters you can customize through hiera values. The defaults are specified in the module's `data/default.yaml` file.

## before classes

But sometimes this is not enough, and you would like to add some extra definitions, you can, for example, add a Puppet class to be executed after the `packages` stage is done and before the `groups_and_users` is done. You can do this by adding the next line to your yaml data:

```yaml
ibm_profile::weblogic::groups_and_users:   my_profile::my_extra_class
```

## after classes

You can do the same when you want to add code after one of the stage classes:

```yaml
ibm_profile::weblogic::firewall:   my_profile::my_extra_class
```

## Skipping

Sometimes organizations use different modules and mechanisms to implement a feature, and you want to skip the class:

```yaml
ibm_profile::weblogic::java_software:   skip
```

## Replacing

Or provide your own implementation:

```yaml
ibm_profile::weblogic::wls_datasources:   my_profile::my_own_implementation
```

This mechanism can be used for all named stages and makes it easy to move from an easy setup with a running standard WebLogic software installation to a fully customized setup using a lot of your own classes plugged in.

Look at the description of the stages and their properties.





## Attributes



Attribute Name                                                 | Short Description                                                                           |
-------------------------------------------------------------- | ------------------------------------------------------------------------------------------- |
[after_firewall](#mq_machine_after_firewall)                   | The name of the class you want to execute directly **after** the `firewall` class.          |
[after_groups_and_users](#mq_machine_after_groups_and_users)   | The name of the class you want to execute directly **after** the `groups_and_usesr` class.  |
[after_java_software](#mq_machine_after_java_software)         |                                                                                             |
[after_limits](#mq_machine_after_limits)                       | The name of the class you want to execute directly **after** the `limits` class.            |
[after_packages](#mq_machine_after_packages)                   | The name of the class you want to execute directly **after** the `packages` class.          |
[after_ssh_setup](#mq_machine_after_ssh_setup)                 |                                                                                             |
[after_sysctl](#mq_machine_after_sysctl)                       | The name of the class you want to execute directly **after** the `sysctl` class.            |
[after_wls_patches](#mq_machine_after_wls_patches)             |                                                                                             |
[after_wls_software](#mq_machine_after_wls_software)           |                                                                                             |
[before_firewall](#mq_machine_before_firewall)                 | The name of the class you want to execute directly **before** the `firewall` class.         |
[before_groups_and_users](#mq_machine_before_groups_and_users) | The name of the class you want to execute directly **before** the `groups_and_users` class. |
[before_java_software](#mq_machine_before_java_software)       |                                                                                             |
[before_limits](#mq_machine_before_limits)                     | The name of the class you want to execute directly **before** the `limits` class.           |
[before_packages](#mq_machine_before_packages)                 | The name of the class you want to execute directly **before** the `packages` class.         |
[before_ssh_setup](#mq_machine_before_ssh_setup)               |                                                                                             |
[before_sysctl](#mq_machine_before_sysctl)                     | The name of the class you want to execute directly **before** the `sysctl` class.           |
[before_wls_patches](#mq_machine_before_wls_patches)           |                                                                                             |
[before_wls_software](#mq_machine_before_wls_software)         |                                                                                             |
[firewall](#mq_machine_firewall)                               | Use this value if you want to skip or use your own class for stage `firewall`.              |
[groups_and_users](#mq_machine_groups_and_users)               | Use this value if you want to skip or use your own class for stage `groups_and_users`.      |
[java_software](#mq_machine_java_software)                     |                                                                                             |
[limits](#mq_machine_limits)                                   | Use this value if you want to skip or use your own class for stage `limits`.                |
[packages](#mq_machine_packages)                               | Use this value if you want to skip or use your own class for stage `packages`.              |
[ssh_setup](#mq_machine_ssh_setup)                             |                                                                                             |
[sysctl](#mq_machine_sysctl)                                   | Use this value if you want to skip or use your own class for stage `sysctl`.                |
[wls_patches](#mq_machine_wls_patches)                         |                                                                                             |
[wls_software](#mq_machine_wls_software)                       |                                                                                             |




### after_firewall<a name='mq_machine_after_firewall'>

The name of the class you want to execute directly **after** the `firewall` class.

You can use hiera to set this value. Here is an example:

```yaml
ibm_profile::weblogic::after_firewall:  my_module::my_class
```

Type: `Optional[String]`

Default:`undef`

[Back to overview of mq_machine](#attributes)

### after_groups_and_users<a name='mq_machine_after_groups_and_users'>

The name of the class you want to execute directly **after** the `groups_and_usesr` class.

You can use hiera to set this value. Here is an example:

```yaml
ibm_profile::weblogic::after_groups_and_usesr:  my_module::my_class
```

Type: `Optional[String]`

Default:`undef`

[Back to overview of mq_machine](#attributes)

### after_java_software<a name='mq_machine_after_java_software'>



[Back to overview of mq_machine](#attributes)

### after_limits<a name='mq_machine_after_limits'>

The name of the class you want to execute directly **after** the `limits` class.

You can use hiera to set this value. Here is an example:

```yaml
ibm_profile::weblogic::after_limits:  my_module::my_class
```

Type: `Optional[String]`

Default:`undef`

[Back to overview of mq_machine](#attributes)

### after_packages<a name='mq_machine_after_packages'>

The name of the class you want to execute directly **after** the `packages` class.

You can use hiera to set this value. Here is an example:

```yaml
ibm_profile::weblogic::after_packages:  my_module::my_class
```

Type: `Optional[String]`

Default:`undef`

[Back to overview of mq_machine](#attributes)

### after_ssh_setup<a name='mq_machine_after_ssh_setup'>



[Back to overview of mq_machine](#attributes)

### after_sysctl<a name='mq_machine_after_sysctl'>

The name of the class you want to execute directly **after** the `sysctl` class.

You can use hiera to set this value. Here is an example:

```yaml
ibm_profile::weblogic::after_sysctl:  my_module::my_class
```

Type: `Optional[String]`

Default:`undef`

[Back to overview of mq_machine](#attributes)

### after_wls_patches<a name='mq_machine_after_wls_patches'>



[Back to overview of mq_machine](#attributes)

### after_wls_software<a name='mq_machine_after_wls_software'>



[Back to overview of mq_machine](#attributes)

### before_firewall<a name='mq_machine_before_firewall'>

The name of the class you want to execute directly **before** the `firewall` class.

You can use hiera to set this value. Here is an example:

```yaml
ibm_profile::weblogic::before_firewall:  my_module::my_class
```

Type: `Optional[String]`

Default:`undef`

[Back to overview of mq_machine](#attributes)

### before_groups_and_users<a name='mq_machine_before_groups_and_users'>

The name of the class you want to execute directly **before** the `groups_and_users` class.

You can use hiera to set this value. Here is an example:

```yaml
ibm_profile::weblogic::before_groups_and_users:  my_module::my_class
```

Type: `Optional[String]`

Default:`undef`

[Back to overview of mq_machine](#attributes)

### before_java_software<a name='mq_machine_before_java_software'>



[Back to overview of mq_machine](#attributes)

### before_limits<a name='mq_machine_before_limits'>

The name of the class you want to execute directly **before** the `limits` class.

You can use hiera to set this value. Here is an example:

```yaml
ibm_profile::weblogic::before_limits:  my_module::my_class
```

Type: `Optional[String]`

Default:`undef`

[Back to overview of mq_machine](#attributes)

### before_packages<a name='mq_machine_before_packages'>

The name of the class you want to execute directly **before** the `packages` class.

You can use hiera to set this value. Here is an example:

```yaml
ibm_profile::weblogic::before_packages:  my_module::my_class
```

Type: `Optional[String]`

Default:`undef`

[Back to overview of mq_machine](#attributes)

### before_ssh_setup<a name='mq_machine_before_ssh_setup'>



[Back to overview of mq_machine](#attributes)

### before_sysctl<a name='mq_machine_before_sysctl'>

The name of the class you want to execute directly **before** the `sysctl` class.

You can use hiera to set this value. Here is an example:

```yaml
ibm_profile::weblogic::before_sysctl:  my_module::my_class
```

Type: `Optional[String]`

Default:`undef`

[Back to overview of mq_machine](#attributes)

### before_wls_patches<a name='mq_machine_before_wls_patches'>



[Back to overview of mq_machine](#attributes)

### before_wls_software<a name='mq_machine_before_wls_software'>



[Back to overview of mq_machine](#attributes)

### firewall<a name='mq_machine_firewall'>

Use this value if you want to skip or use your own class for stage `firewall`.

## Use your own class

You can use hiera to set this value. Here is an example:

```yaml
ibm_profile::weblogic::firewall:  my_module::my_class
```

## Skip

You can use hiera to set this value. Here is an example:

```yaml
ibm_profile::weblogic::firewall:  skip
```

Type: `Optional[String]`

Default:`undef`

[Back to overview of mq_machine](#attributes)

### groups_and_users<a name='mq_machine_groups_and_users'>

Use this value if you want to skip or use your own class for stage `groups_and_users`.

## Use your own class

You can use hiera to set this value. Here is an example:

```yaml
ibm_profile::weblogic::groups_and_users:  my_module::my_class
```

## Skip

You can use hiera to set this value. Here is an example:

```yaml
ibm_profile::weblogic::groups_and_users:  skip
```

Type: `Optional[String]`

Default:`undef`

[Back to overview of mq_machine](#attributes)

### java_software<a name='mq_machine_java_software'>



[Back to overview of mq_machine](#attributes)

### limits<a name='mq_machine_limits'>

Use this value if you want to skip or use your own class for stage `limits`.

## Use your own class

You can use hiera to set this value. Here is an example:

```yaml
ibm_profile::weblogic::limits:  my_module::my_class
```

## Skip

You can use hiera to set this value. Here is an example:

```yaml
ibm_profile::weblogic::limits:  skip
```

Type: `Optional[String]`

Default:`undef`

[Back to overview of mq_machine](#attributes)

### packages<a name='mq_machine_packages'>

Use this value if you want to skip or use your own class for stage `packages`.

## Use your own class

You can use hiera to set this value. Here is an example:

```yaml
ibm_profile::weblogic::packages:  my_module::my_class
```

## Skip

You can use hiera to set this value. Here is an example:

```yaml
ibm_profile::weblogic::packages:  skip
```

Type: `Optional[String]`

Default:`undef`

[Back to overview of mq_machine](#attributes)

### ssh_setup<a name='mq_machine_ssh_setup'>



[Back to overview of mq_machine](#attributes)

### sysctl<a name='mq_machine_sysctl'>

Use this value if you want to skip or use your own class for stage `sysctl`.

## Use your own class

You can use hiera to set this value. Here is an example:

```yaml
ibm_profile::weblogic::sysctl:  my_module::my_class
```

## Skip

You can use hiera to set this value. Here is an example:

```yaml
ibm_profile::weblogic::sysctl:  skip
```

Type: `Optional[String]`

Default:`undef`

[Back to overview of mq_machine](#attributes)

### wls_patches<a name='mq_machine_wls_patches'>



[Back to overview of mq_machine](#attributes)

### wls_software<a name='mq_machine_wls_software'>



[Back to overview of mq_machine](#attributes)
