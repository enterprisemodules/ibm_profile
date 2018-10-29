---
title: description
keywords: documentation
layout: documentation
sidebar: ibm_profile_sidebar
toc: false
---
## Overview

The `ibm_profile` contains multiple Puppet classes to easily create IBM MQ and IBM Integration Bus (IIB) installtions with Puppet. These classes are an easy way to get started, but also allow you extend and replace parts of the standard implementations with ease.

### The `ibm_profile::mq_machine` class

The `ibm_profile::mq_machine` class allows you to get a full fledged MQ setup on your system in a minute. It contains all default settings needed, but you can also tweak it in a lot of ways. It contains the following stages (These are not puppet stages):

- [`sysctl`](/docs/ibm_profile/mq_machine/sysctl.html)       (Set all required sysctl parameters)
- [`limits`](/docs/ibm_profile/mq_machine/limits.html)        (Set all required OS limits)
- [`packages`](/docs/ibm_profile/mq_machine/packages.html)    (Install all required packages)
- [`groups_and_users`](/docs/ibm_profile/mq_machine/groups_and_users.html) (Create required groups and users)
- [`firewall`](/docs/ibm_profile/mq_machine/firewall.html)      (Open required firewall rules)
- [`software`](/docs/ibm_profile/mq_machine/software.html)      (Install required IBM MQ software)
- [`manager_setup`](/docs/ibm_profile/mq_machine/manager_setup.html) (Configure one or more MQ managers)
- [`autostart`](/docs/ibm_profile/mq_machine/autostart.html)  (Ensure autostart for the MQ managers)
- [`authorization_setup`](/docs/ibm_profile/mq_machine/authorization_setup.html) (Setup MQ authorization)
- [`messaging_setup`](/docs/ibm_profile/mq_machine/messaging_setup.html) (Setup MQ messaging including queues, topics etc.)
- [`mq_web`](/docs/ibm_profile/mq_machine/mq_web.html) (Enable MQ Web)

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


### The `ibm_profile::iib_machine` class

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
]%>
