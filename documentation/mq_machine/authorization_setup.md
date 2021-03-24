---
title: mq machine::authorization setup
keywords: documentation
layout: documentation
sidebar: ibm_profile_sidebar
toc: false
---
## Overview

This class allows you to setup your MQ messaging security. It has support for:

- authentication_info    (See [mq_authentication_info](/docs/mq_config/mq_authentication_info.html))
- authorization          (See [mq_authorization](/docs/mq_config/mq_authorization.html))
- channel_authentication (See [mq_channel_authentication](/docs/mq_config/mq_channel_authentication.html))

 Use use a `yaml` representation of the specfied resource to specify all properties and params of the objects you need. 
 
 When a lot of the objects  have the same defaults, use the `defaults` parameter to specify a Hash of defaults.





If you want to play and experiment with this type, please take a look at our playgrounds. At our playgrounds, 
we provide you with a pre-installed environment, where you experiment with these Puppet types.

Look at our playgrounds [here](/playgrounds#mq)

## Attributes



Attribute Name                                                                              | Short Description                                           |
------------------------------------------------------------------------------------------- | ----------------------------------------------------------- |
[authentication_defaults](#mq_machine::authorization_setup_authentication_defaults)         | The defaults to use for all MQ authentication_info records. |
[authentication_info](#mq_machine::authorization_setup_authentication_info)                 | A Hash of MQ authentication_info records.                   |
[authorization_defaults](#mq_machine::authorization_setup_authorization_defaults)           | The defaults to use for all MQ authorization records.       |
[authorization_list](#mq_machine::authorization_setup_authorization_list)                   | A Hash of MQ authorization records.                         |
[channel_authentication_list](#mq_machine::authorization_setup_channel_authentication_list) | a Hash of MQ channel authentication records.                |




### authentication_defaults<a name='mq_machine::authorization_setup_authentication_defaults'>

The defaults to use for all MQ authentication_info records.

Use use a `yaml` representation of [mq_authentication_info](/docs/mq_config/mq_authentication_info.html) to specify all properties and params of the MQ authentication_info records you need. 

The default is: `{}`
Type: `Hash`


[Back to overview of mq_machine::authorization_setup](#attributes)

### authentication_info<a name='mq_machine::authorization_setup_authentication_info'>

A Hash of MQ authentication_info records.

Use use a `yaml` representation of [mq_authentication_info](/docs/mq_config/mq_authentication_info.html) to specify all properties and params of the MQ authentication_info records you need. 

The default is: `{}`
Type: `Hash`


[Back to overview of mq_machine::authorization_setup](#attributes)

### authorization_defaults<a name='mq_machine::authorization_setup_authorization_defaults'>

The defaults to use for all MQ authorization records.

Use use a `yaml` representation of [mq_authorization](/docs/mq_config/mq_authorization.html) to specify all properties and params of the MQ authorization records you need. 

The default is: `{}`
Type: `Hash`


[Back to overview of mq_machine::authorization_setup](#attributes)

### authorization_list<a name='mq_machine::authorization_setup_authorization_list'>

A Hash of MQ authorization records.

Use use a `yaml` representation of [mq_authorization](/docs/mq_config/mq_authorization.html) to specify all properties and params of the MQ authorization records you need. 

The default is: `{}`
Type: `Hash`


[Back to overview of mq_machine::authorization_setup](#attributes)

### channel_authentication_list<a name='mq_machine::authorization_setup_channel_authentication_list'>

a Hash of MQ channel authentication records.

Use use a `yaml` representation of [mq_channel_authentication](/docs/mq_config/mq_channel_authentication.html) to specify all properties and params of the MQ channel authentication records you need. 

The default is: `{}`
Type: `Hash`


[Back to overview of mq_machine::authorization_setup](#attributes)
