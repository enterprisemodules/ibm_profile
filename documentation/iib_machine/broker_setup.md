---
title: iib machine::broker setup
keywords: documentation
layout: documentation
sidebar: ibm_profile_sidebar
toc: false
---
## Overview

This class allows you to setup your IIB broker configuration. It has support for creating and managing multiple brokers. Use use a `yaml` representation of [iib_brokers](/docs/iib_config/iib_broker.html) to specify all properties and params of the brokers you need. When a lot of the brokers have the same defaults, use the `defaults` parameter to specify a Hash of defaults.

Besides the initial broker configuration, you can also configure additional properties. Read about [iib_properties here](/docs/iib_config/iib_property.html).

This class also allows you to register used credentials. Use the `credentials` property for this. Read about [iib_credential here](/docs/iib_config/iib_credential.html)




If you want to play and experiment with this type, please take a look at our playgrounds. At our playgrounds, 
we provide you with a pre-installed environment, where you experiment with these Puppet types.

Look at our playgrounds [here](/playgrounds#mq)

## Attributes



Attribute Name                                        | Short Description                                           |
----------------------------------------------------- | ----------------------------------------------------------- |
[credentials](#iib_machine::broker_setup_credentials) | The list of used credentials.                               |
[defaults](#iib_machine::broker_setup_defaults)       | a Hash of default properties added to all specfied Brokers. |
[list](#iib_machine::broker_setup_list)               | The list of brokers to configure.                           |
[properties](#iib_machine::broker_setup_properties)   | The list of IIB broker properties.                          |




### defaults<a name='iib_machine::broker_setup_defaults'>

a Hash of default properties added to all specfied Brokers. Use [iib_brokers](/docs/iib_config/iib_broker.html) to specify the defaults.

The default value is: `{}`

Type: `Hash`


[Back to overview of iib_machine::broker_setup](#attributes)

### list<a name='iib_machine::broker_setup_list'>

The list of brokers to configure. Use use a `yaml` representation of [iib_brokers](/docs/iib_config/iib_broker.html) to specify all properties and params of the brokers you need. 

The default value is fetched from the hiera key `ibm_profile::iib_brokers` and is `{}` by default.
Type: `Hash`


[Back to overview of iib_machine::broker_setup](#attributes)

### properties<a name='iib_machine::broker_setup_properties'>

The list of IIB broker properties. Read about [iib_properties here](/docs/iib_config/iib_property.html). 

The default value is: `{}`

Type: `Hash`


[Back to overview of iib_machine::broker_setup](#attributes)

### credentials<a name='iib_machine::broker_setup_credentials'>

The list of used credentials. Use the `credentials` property for this. Read about [iib_credential here](/docs/iib_config/iib_credential.html). 

The default value is: `{}`


Type: `Hash`


[Back to overview of iib_machine::broker_setup](#attributes)
