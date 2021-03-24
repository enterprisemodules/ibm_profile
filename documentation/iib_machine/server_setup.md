---
title: iib machine::server setup
keywords: documentation
layout: documentation
sidebar: ibm_profile_sidebar
toc: false
---
## Overview

This class allows you to setup your IIB server configuration. It has support for creating and managing multiple servers. Use use a `yaml` representation of [iib_servers](/docs/iib_config/iib_server.html) to specify all properties and params of the servers you need. When a lot of the servers have the same defaults, use the `defaults` parameter to specify a Hash of defaults.

Besides the initial server configuration, you can also configure additional properties. Read about [iib_properties here](/docs/iib_config/iib_property.html).





If you want to play and experiment with this type, please take a look at our playgrounds. At our playgrounds, 
we provide you with a pre-installed environment, where you experiment with these Puppet types.

Look at our playgrounds [here](/playgrounds#mq)

## Attributes



Attribute Name                                      | Short Description                                           |
--------------------------------------------------- | ----------------------------------------------------------- |
[defaults](#iib_machine::server_setup_defaults)     | a Hash of default properties added to all specfied Brokers. |
[list](#iib_machine::server_setup_list)             | The list of servers to configure.                           |
[properties](#iib_machine::server_setup_properties) | The list of IIB server properties.                          |




### defaults<a name='iib_machine::server_setup_defaults'>

a Hash of default properties added to all specfied Brokers. Use [iib_server](/docs/iib_config/iib_server.html) to specify the defaults.

The default value is: `{}`

Type: `Hash`


[Back to overview of iib_machine::server_setup](#attributes)

### list<a name='iib_machine::server_setup_list'>

The list of servers to configure. Use use a `yaml` representation of [iib_server](/docs/iib_config/iib_server.html) to specify all properties and params of the brokers you need. 

The default value is: `{}`

Type: `Hash`


[Back to overview of iib_machine::server_setup](#attributes)

### properties<a name='iib_machine::server_setup_properties'>

The list of IIB server properties. Read about [iib_properties here](/docs/iib_config/iib_property.html). 

The default value is: `{}`

Type: `Hash`


[Back to overview of iib_machine::server_setup](#attributes)
