
[![Enterprise Modules](https://raw.githubusercontent.com/enterprisemodules/public_images/master/banner1.jpg)](https://www.enterprisemodules.com)

#### Table of Contents

1. [Overview](#overview)
2. [License](#license)
3. [Description - What the module does and why it is useful](#description)
4. [Setup](#setup)
  * [Requirements](#requirements)
  * [Installing the ibm_profile module](#installing-the-ibm_profile-module)
5. [Usage - Configuration options and additional functionality](#usage)
6. [Reference - An under-the-hood peek at what the module is doing and how](#reference)
7. [Limitations - OS compatibility, etc.](#limitations)

## Overview

The `ibm_profile` module allows an easy path from first simple installation to a fully customized Enterprise setup. It is part of our family of Puppet modules to install, manage IBM MQ and IBM IIB with Puppet. Besides the `ibm_profile` module, this family also contains:

- [mq_config](https://www.enterprisemodules.com/shop/products/puppet-mq_config-module) For configuring IBM MQ.
- [mq_install](https://www.enterprisemodules.com/shop/products/puppet-mq_install-module) For installing IBM MQ software on Linux systems
- [iib_config](https://www.enterprisemodules.com/shop/products/puppet-iib_config-module) For configuring IBM Integration Bus on Linux systems
- [iib_install](https://www.enterprisemodules.com/shop/products/puppet-iib_install-module) For installing IBM Integration Bus on Linux systems

## License

Most of the [Enterprise Modules](https://www.enterprisemodules.com) modules are commercial modules. This one is **NOT**. It is an Open Source module. You are free to use it any way you like. It, however, is based on our commercial Puppet WebLogic modules.

## Description

### The `ibm_profile::mq_machine` class

The `ibm_profile::mq_machine` class allows you to get a full fledged MQ setup on your system in a minute. It contains all default settings needed, but you can also tweak it in a lot of ways. It contains the following stages (These are not puppet stages):

- [`sysctl`](http://www.enterprisemodules.com/docs/ibm_profile/mq_machine/sysctl.html)       (Set all required sysctl parameters)
- [`limits`](http://www.enterprisemodules.com/docs/ibm_profile/mq_machine/limits.html)        (Set all required OS limits)
- [`packages`](http://www.enterprisemodules.com/docs/ibm_profile/mq_machine/packages.html)    (Install all required packages)
- [`groups_and_users`](http://www.enterprisemodules.com/docs/ibm_profile/mq_machine/groups_and_users.html) (Create required groups and users)
- [`firewall`](http://www.enterprisemodules.com/docs/ibm_profile/mq_machine/firewall.html)      (Open required firewall rules)
- [`software`](http://www.enterprisemodules.com/docs/ibm_profile/mq_machine/software.html)      (Install required IBM MQ software)
- [`manager_setup`](http://www.enterprisemodules.com/docs/ibm_profile/mq_machine/manager_setup.html) (Configure one or more MQ managers)
- [`autostart`](http://www.enterprisemodules.com/docs/ibm_profile/mq_machine/autostart.html)  (Ensure autostart for the MQ managers)
- [`authorization_setup`](http://www.enterprisemodules.com/docs/ibm_profile/mq_machine/authorization_setup.html) (Setup MQ authorization)
- [`messaging_setup`](http://www.enterprisemodules.com/docs/ibm_profile/mq_machine/messaging_setup.html) (Setup MQ messaging including queues, topics etc.)
- [`mq_web`](http://www.enterprisemodules.com/docs/ibm_profile/mq_machine/mq_web.html) (Enable MQ Web)

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

- [`sysctl`](http://www.enterprisemodules.com/docs/ibm_profile/iib_machine/sysctl.html)                   (Set all required sysctl parameters)
- [`limits`](http://www.enterprisemodules.com/docs/ibm_profile/iib_machine/limits.html)                   (Set all required OS limits)
- [`packages`](http://www.enterprisemodules.com/docs/ibm_profile/iib_machine/packages.html)               (Install all required packages
- [`groups_and_users`](http://www.enterprisemodules.com/docs/ibm_profile/iib_machine/groups_and_users.html) (Create required groups and users)
- [`firewall`](http://www.enterprisemodules.com/docs/ibm_profile/iib_machine/firewall.html)                 (Open required firewall rules)
- [`software`](http://www.enterprisemodules.com/docs/ibm_profile/iib_machine/software.html)                 (Install required IBM MQ software)
- [`broker_setup`](http://www.enterprisemodules.com/docs/ibm_profile/iib_machine/broker_setup.html)         (Setup the IIB broker(s))
- [`server_setup`](http://www.enterprisemodules.com/docs/ibm_profile/iib_machine/server_setup.html)         (Setup ths IIB server(s))
- [`deployments`](http://www.enterprisemodules.com/docs/ibm_profile/iib_machine/deployments.html)           (Manage the deployments)
- [`autostart`](http://www.enterprisemodules.com/docs/ibm_profile/iib_machine/autostart.html)               (Ensure autostart for the IIB brokers)

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

## Setup

### Requirements

The [`ibm_profile`](https://www.enterprisemodules.com/shop/products/puppet-ibm_install-module) module requires:

- Puppet module [`enterprisemodules-easy_type`](https://forge.puppet.com/enterprisemodules/easy_type) installed.
- Puppet module [`enterprisemodules-mq_install`](https://forge.puppet.com/enterprisemodules/mq_install) installed.
- Puppet module [`enterprisemodules-mq_config`](https://forge.puppet.com/enterprisemodules/mq_config) installed.
- Puppet module [`enterprisemodules-iib_install`](https://forge.puppet.com/enterprisemodules/iib_install) installed.
- Puppet module [`enterprisemodules-iib_config`](https://forge.puppet.com/enterprisemodules/iib_config) installed.

- Puppet version 4.10.8 or higher. Can be Puppet Enterprise or Puppet Open Source
- A valid IBM MQ license and/or IBM Integration Bus License
- A valid Enterprise Modules license for usage.
- Runs on most Linux systems.
- Windows systems are **NOT** supported

This module uses some other public Puppet forge modules. Check the metadata to ensure you have all dependencies installed.

#### We support MQ and IIB versions:

- MQ 8 all fixpacks
- MQ 9 all fixpacks
- IIB 10 fixpack 6 to 14

### Installing the ibm_profile module

To install these modules, you can use a `Puppetfile`

```
mod 'enterprisemodules/ibm_profile'               ,'0.x.0'
```

Then use the `librarian-puppet` or `r10K` to install the software.

You can also install the software using the `puppet module`  command:

```
puppet module install enterprisemodules-ibm_profile
```
## Usage

### `ibm_profile::mq_machine`

To get started, include the `ibm_profile::mq_machine` class in your role, make sure you have a module called `software` that has a folder `files` and that directory contains the next files:

- IBM_MQ_9.0.0.0_LINUX_X86-64.tar.gz 

Add the following line to the hiera data:

```yaml
ibm_profile::mq_managers:
  MQ01:
    ensure: present
```

Run Puppet and you have a Server with MQ installed a MQ Queue Manager named MQ01
Check the documentation for all the settings you can manage. 

### `ibm_profile::iib_machine`

To get started, include the `ibm_profile::iib_machine` class in your role, make sure you have a module called `software` that has a folder `files` and that directory contains the next files:

- 10.0.0-IIB-LINUXX64-FP0011.tar.gz

Add the following line to the hiera data:

```yaml
ibm_profile::iib_brokers:
  '10.0.0.11/BROKER_01':
    ensure: present

ibm_profile::iib_machine::server_setup::list:
  '10.0.0.11/BROKER_01/SERVER_01':
    ensure: present
```

Run Puppet and you have a Server with IIB Broker `BROKER_01` running and  server `SERVER_01` running on it. Check the documentation for all the settings you can manage. 

## Reference

Here you can find some more information regarding this puppet module:
- [The `ibm_profile` documentation](https://www.enterprisemodules.com/docs/ibm_profile/description.html)
- [The `mq_install` documentation](https://www.enterprisemodules.com/docs/mq_install/description.html)
- [The `mq_config` documentation](https://www.enterprisemodules.com/docs/mq_config/description.html)
- [The `iib_install` documentation](https://www.enterprisemodules.com/docs/iib_install/description.html)
- [The `iib_config` documentation](https://www.enterprisemodules.com/docs/iib_config/description.html)


## Limitations

This module runs on most Linux versions. It requires a puppet version higher than 4.10.8. The module does **NOT** run on windows systems.
