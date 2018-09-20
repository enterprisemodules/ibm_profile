---
title: node
keywords: documentation
layout: documentation
sidebar: ibm_profile_sidebar
toc: false
---
## Overview


This is a highly customizable Puppet profile class to define a WebLogic node. At its core just adding:

```
contain ibm_profile::node
```

Is enough to get a WebLogic 12.2.1.3. Installed, fetch the domain definition from the Admin Server and start the node manager.

But sometimes you have specific uses cases that are not handled well by the standard classes. This profile class allows you to add your own code to the execution.

## Stages

Defining and starting a WebLogic Admin Server on your system goes through several stages(These are not puppet stages):

- [`weblogic`](./weblogic.html)     Setup the OS and install the WebLogic software
- [`copy_domain`](./copy_domain.html)   Copy the packed domain from the AdminServer and start the Nodemanager
- [`wls_startup`](./wls_startup.html)   Ensure WebLogic gets started after a reboot.

All these stages have a default implementation. This implementation is suitable to get started with. These classed all have parameters you can customize through hiera values. The defaults are specified in the module's `data/default.yaml` file. 

## before classes

But sometimes this is not enough, and you would like to add some extra definitions, you can, for example, add a Puppet class to be executed after the `weblogic` stage is done and before the `copy_domain` is done. You can do this by adding the next line to your yaml data:

```yaml
ibm_profile::node::before_copy_domain:   my_profile::my_extra_class
```

## after classes

You can do the same when you want to add code after one of the stage classes:

```yaml
ibm_profile::node::wls_startup:   my_profile::my_extra_class
```

## Skipping

Sometimes organizations use different modules and mechanisms to implement a feature, and you want to skip the class:

```yaml
ibm_profile::node::pack_domain:   skip
```

## Replacing

Or provide your own implementation:

```yaml
ibm_profile::admin_server::copy_domain:   my_profile::my_own_implementation
```

This mechanism can be used for all named stages and makes it easy to move from an easy setup with a running standard WebLogic node server to a fully customized setup using a lot of your own classes plugged in.

Look at the description of the stages and their properties.




## Attributes



Attribute Name                                 | Short Description |
---------------------------------------------- | ----------------- |
[after_copy_domain](#node_after_copy_domain)   |                   |
[after_weblogic](#node_after_weblogic)         |                   |
[after_wls_startup](#node_after_wls_startup)   |                   |
[before_copy_domain](#node_before_copy_domain) |                   |
[before_weblogic](#node_before_weblogic)       |                   |
[before_wls_startup](#node_before_wls_startup) |                   |
[copy_domain](#node_copy_domain)               |                   |
[weblogic](#node_weblogic)                     |                   |
[wls_startup](#node_wls_startup)               |                   |




### weblogic<a name='node_weblogic'>



[Back to overview of node](#attributes)

### copy_domain<a name='node_copy_domain'>



[Back to overview of node](#attributes)

### wls_startup<a name='node_wls_startup'>



[Back to overview of node](#attributes)

### before_weblogic<a name='node_before_weblogic'>



[Back to overview of node](#attributes)

### before_copy_domain<a name='node_before_copy_domain'>



[Back to overview of node](#attributes)

### before_wls_startup<a name='node_before_wls_startup'>



[Back to overview of node](#attributes)

### after_weblogic<a name='node_after_weblogic'>



[Back to overview of node](#attributes)

### after_copy_domain<a name='node_after_copy_domain'>



[Back to overview of node](#attributes)

### after_wls_startup<a name='node_after_wls_startup'>



[Back to overview of node](#attributes)
