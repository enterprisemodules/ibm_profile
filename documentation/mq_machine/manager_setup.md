---
title: mq machine::manager setup
keywords: documentation
layout: documentation
sidebar: ibm_profile_sidebar
toc: false
---
## Overview

This class allows you to setup your MQ manager configuration. It has support for creating and managing multiple MQ managers. Use use a `yaml` representation of [mq_manager](/docs/mq_config/mq_manager.html) to specify all properties and params of the brokers you need. When a lot of the MQ managers have the same defaults, use the `defaults` parameter to specify a Hash of defaults.





If you want to play and experiment with this type, please take a look at our playgrounds. At our playgrounds, 
we provide you with a pre-installed environment, where you experiment with these Puppet types.

Look at our playgrounds [here](/playgrounds#mq)

## Attributes



Attribute Name                                  | Short Description                        |
----------------------------------------------- | ---------------------------------------- |
[defaults](#mq_machine::manager_setup_defaults) | The defaults to use for all MQ managers. |
[list](#mq_machine::manager_setup_list)         | A Hash of MQ managers.                   |




### defaults<a name='mq_machine::manager_setup_defaults'>

The defaults to use for all MQ managers.

Use use a `yaml` representation of [mq_manager](/docs/mq_config/mq_manager.html) to specify all properties and params of the MQ managers you need. 

The default is: `{}`
Type: `Hash`


[Back to overview of mq_machine::manager_setup](#attributes)

### list<a name='mq_machine::manager_setup_list'>

A Hash of MQ managers. Use use a `yaml` representation of [mq_manager](/docs/mq_config/mq_manager.html) to specify all properties and params of the MQ managers you need. 

The default is: `{}`


Type: `Hash`

Default:`$ibm_profile::mq_managers`

[Back to overview of mq_machine::manager_setup](#attributes)
