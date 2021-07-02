---
title: mq machine::messaging setup
keywords: documentation
layout: documentation
sidebar: ibm_profile_sidebar
toc: false
---
## Overview

This class allows you to setup your MQ messaging setup. It has support for:

- queue's   (See [mq_queue](/docs/mq_config/mq_queue.html))
- topics    (See [mq_topic](/docs/mq_config/mq_topic.html))
- listeners (See [mq_listener](/docs/mq_config/mq_listener.html))
- channels  (See [mq_channel](/docs/mq_config/mq_channel.html))

 Use use a `yaml` representation of the specfied resource to specify all properties and params of the objects you need. 
 
 When a lot of the objects  have the same defaults, use the `defaults` parameter to specify a Hash of defaults.





## Experience the Power of Puppet for IBM MQ

If you want to play and experiment with Puppet and IBM MQ, please take a look at our playgrounds. At our playgrounds, we provide you with a pre-installed environment, where you experiment fast and easy.

{% include super_hero.html title="For IBM MQ" ref="/playgrounds#mq" %}


## Attributes



Attribute Name                                                      | Short Description                         |
------------------------------------------------------------------- | ----------------------------------------- |
[channel_defaults](#mq_machine::messaging_setup_channel_defaults)   | The defaults to use for all MQ channels.  |
[channel_list](#mq_machine::messaging_setup_channel_list)           | A Hash of MQ channels.                    |
[listener_defaults](#mq_machine::messaging_setup_listener_defaults) | The defaults to use for all MQ listeners. |
[listener_list](#mq_machine::messaging_setup_listener_list)         | A Hash of MQ listeners.                   |
[queue_defaults](#mq_machine::messaging_setup_queue_defaults)       | The defaults to use for all MQ queues.    |
[queue_list](#mq_machine::messaging_setup_queue_list)               | A Hash of MQ queues.                      |
[topic_defaults](#mq_machine::messaging_setup_topic_defaults)       | The defaults to use for all MQ topics.    |
[topic_list](#mq_machine::messaging_setup_topic_list)               | A Hash of MQ topics.                      |




### queue_list<a name='mq_machine::messaging_setup_queue_list'>

A Hash of MQ queues.

Use use a `yaml` representation of [mq_queue](/docs/mq_config/mq_queue.html) to specify all properties and params of the MQ queues you need. 

The default is: `{}`
Type: `Hash`


[Back to overview of mq_machine::messaging_setup](#attributes)

### queue_defaults<a name='mq_machine::messaging_setup_queue_defaults'>

The defaults to use for all MQ queues.

Use use a `yaml` representation of [mq_queue](/docs/mq_config/mq_queue.html) to specify all properties and params of the MQ queues you need. 

The default is: `{}`
Type: `Hash`


[Back to overview of mq_machine::messaging_setup](#attributes)

### topic_list<a name='mq_machine::messaging_setup_topic_list'>

A Hash of MQ topics.

Use use a `yaml` representation of [mq_topic](/docs/mq_config/mq_topic.html) to specify all properties and params of the MQ topics you need. 

The default is: `{}`
Type: `Hash`


[Back to overview of mq_machine::messaging_setup](#attributes)

### topic_defaults<a name='mq_machine::messaging_setup_topic_defaults'>

The defaults to use for all MQ topics.

Use use a `yaml` representation of [mq_topic](/docs/mq_config/mq_topic.html) to specify all properties and params of the MQ topics you need. 

The default is: `{}`
Type: `Hash`


[Back to overview of mq_machine::messaging_setup](#attributes)

### listener_list<a name='mq_machine::messaging_setup_listener_list'>

A Hash of MQ listeners.

Use use a `yaml` representation of [mq_listener](/docs/mq_config/mq_listener.html) to specify all properties and params of the MQ listeners you need. 

The default is: `{}`
Type: `Hash`


[Back to overview of mq_machine::messaging_setup](#attributes)

### listener_defaults<a name='mq_machine::messaging_setup_listener_defaults'>

The defaults to use for all MQ listeners.

Use use a `yaml` representation of [mq_listener](/docs/mq_config/mq_listener.html) to specify all properties and params of the MQ listeners you need. 

The default is: `{}`
Type: `Hash`


[Back to overview of mq_machine::messaging_setup](#attributes)

### channel_list<a name='mq_machine::messaging_setup_channel_list'>

A Hash of MQ channels.

Use use a `yaml` representation of [mq_channel](/docs/mq_config/mq_channel.html) to specify all properties and params of the MQ channels you need. 

The default is: `{}`
Type: `Hash`


[Back to overview of mq_machine::messaging_setup](#attributes)

### channel_defaults<a name='mq_machine::messaging_setup_channel_defaults'>

The defaults to use for all MQ channels.

Use use a `yaml` representation of [mq_channel](/docs/mq_config/mq_channel.html) to specify all properties and params of the MQ channels you need. 

The default is: `{}`
Type: `Hash`


[Back to overview of mq_machine::messaging_setup](#attributes)
