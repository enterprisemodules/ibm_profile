
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

<%- include_attributes [
  :weblogic,
  :copy_domain,
  :wls_startup,
  :before_weblogic,
  :before_copy_domain,
  :before_wls_startup,
  :after_weblogic,
  :after_copy_domain,
  :after_wls_startup,
] %>
