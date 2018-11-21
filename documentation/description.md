---
title: description
keywords: documentation
layout: documentation
sidebar: ibm_profile_sidebar
toc: false
---
## Overview

The `ibm_profile` contains multiple Puppet classes to easily create IBM MQ and IBM Integration Bus (IIB) installtions with Puppet. These classes are an easy way to get started, but also allow you extend and replace parts of the standard implementations with ease.

## The `ibm_profile::mq_machine` class

The `ibm_profile::mq_machine` class allows you to get a full fledged MQ setup on your system in a minute. It contains all default settings needed, but you can also tweak it in a lot of ways. It contains the following stages (These are not puppet stages):

- `sysctl`              (Set all required sysctl parameters)
- `limits`              (Set all required OS limits)
- `packages`            (Install all required packages)
- `groups_and_users`    (Create required groups and users)
- `firewall`            (Open required firewall rules)
- `software`            (Install required IBM MQ software)
- `fixpack`             (Installrequested MQ Fixpack)
- `manager_setup`       (Configure one or more MQ managers)
- `autostart`           (Ensure autostart for the MQ managers)
- `authorization_setup` (Setup MQ authorization)
- `messaging_setup`     (Setup MQ messaging including queues, topics etc.)
- `mq_web`              (Enable MQ Web)

All these stages have a default implementation. This implementation is suitable to get started with. These classed all have parameters you can customize through hiera values. The defaults are specified in the module's `data/default.yaml` file. 

But sometimes this is not enough and you would like to add some extra definitions, you can, for example, add a Puppet class to be executed after the `systctl` stage is done and before the `limits` is done. You can do this by adding the next line to your yaml data:

```yaml
ibm_profile::mq_machine::before_sysctl:   my_profile::my_extra_class
```
or after:

```yaml
ibm_profile::mq_machine::after_sysctl:   my_profile::my_extra_class
```

If you want to, you can also skip this provided class:

```yaml
ibm_profile::mq_machine::sysctl:   skip
```

Or provide your own implementation:

```yaml
ibm_profile::mq_machine::sysctl:   my_profile::my_own_implementation
```

This mechanism can be used for all named stages and makes it easy to move from an easy setup with a running standard database to a fully customized setup using a lot of your own classes plugged in.


## The `ibm_profile::iib_machine` class

Besides setting up MQ, the `ibm_profile` module also has support for setting up IBM Integration Bus (IIB). The `ibm_profile::iib_machine` class allows you to get a full fledged IIB setup on your system in a minute. It contains all default settings needed, but you can also tweak it in a lot of ways. It contains the following stages (These are not puppet stages):

- `sysctl`              (Set all required sysctl parameters)
- `limits`              (Set all required OS limits)
- `packages`            (Install all required packages)
- `groups_and_users`    (Create required groups and users)
- `firewall`            (Open required firewall rules)
- `software`            (Install required IBM MQ software)
- `broker_setup`        (Setup the IIB broker(s))
- `server_setup`        (Setup ths IIB server(s))
- `deployments`         (Manage the deployments)
- `autostart`           (Ensure autostart for the MQ managers)

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







