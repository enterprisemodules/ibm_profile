
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

The `ibm_profile::mq_system` class contains all the Puppet code to install, create and populate a running MQ manager with all required objects. This class is an easy way to get started. It contains the following stages (These are not puppet stages):

- `sysctl`               (Set all required sysctl parameters)
- `limits`               (Set all required OS limits)
- `groups_and_users`     (Create required groups and users)
- `packages`             (Install all required packages)
- `firewall`             (Open required firewall rules)
- `mq_software`          (Install required Oracle database software)
- `mq_manager`           (Define the MQ manager)
- `mq_authorizations`    (Define the MQ authorizations)
- `mq_queues_and_topics` (Define all MQ queues and topics)

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

This mechanism can be used for all named stages and makes it easy to move from an easy setup with a running standard MQ setup to a fully customized setup using a lot of your own classes plugged in.

Check [here](https://www.enterprisemodules.com/docs/mq_profile/description.html) to see the full documentation for this module.

This module has a couple of convenient classes to help you setup your IBM MQ and/or IBM Integration Bus environment:

- [`ibm_profile::mq_machine`](https://www.enterprisemodules.com/docs/ibm_profile/mq_machine.html)       Ensure MQ is installed and configured.
- [`ibm_profile::iib_machine`](https://www.enterprisemodules.com/docs/ibm_profile/iib_machine.html)     Ensure IBM Integration Bus is installed and configured

All of these classes contain some steps. All of these stapes have default implementations, but you can add extra Puppet code to the catalog and remove or override the default implementation. This can all be done by adding values to your hiera files.

Check [here](https://www.enterprisemodules.com/docs/ibm_profile/description.html) to see the full documentation for this module.

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

[TODO]

### Installing the ibm_profile module

To install these modules, you can use a `Puppetfile`

```
mod 'enterprisemodules/ibm_profile'               ,'0.1.0'
```

Then use the `librarian-puppet` or `r10K` to install the software.

You can also install the software using the `puppet module`  command:

```
puppet module install enterprisemodules-ibm_profile
```
## Usage

To get started, include the `ibm_profile::mq_machine` class in your role, make sure you have a module called `software` that has a folder `files` and that directory contains the next files:

[TODO]

Run Puppet and you have a Server with MQ installed a MQ Queue Manager named ??
Check the documentation for all the settings you can manage. Here is a list of the most basic stuff you'd probably want to change:

```yaml
[TODO]
```

## Reference

Here you can find some more information regarding this puppet module:
- [The `ibm_profile` documentation](https://www.enterprisemodules.com/docs/ibm_profile/description.html)
- [The `mq_install` documentation](https://www.enterprisemodules.com/docs/mq_install/description.html)
- [The `mq_config` documentation](https://www.enterprisemodules.com/docs/mq_config/description.html)
- [The `iib_install` documentation](https://www.enterprisemodules.com/docs/iib_install/description.html)
- [The `iib_config` documentation](https://www.enterprisemodules.com/docs/iib_config/description.html)

Here are related blog posts:

[TODO]

## Limitations

This module runs on most Linux versions. It requires a puppet version higher than 4.10.8. The module does **NOT** run on windows systems.
