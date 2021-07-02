---
title: mq machine::autostart
keywords: documentation
layout: documentation
sidebar: ibm_profile_sidebar
toc: false
---
## Overview

This class enables autostart for the specfied MQ managers. This means a `systemctl` unit is created and the named MQ managers are added. 





## Experience the Power of Puppet for IBM MQ

If you want to play and experiment with Puppet and IBM MQ, please take a look at our playgrounds. At our playgrounds, we provide you with a pre-installed environment, where you experiment fast and easy.

{% include super_hero.html title="For IBM MQ" ref="/playgrounds#mq" %}


## Attributes



Attribute Name                      | Short Description      |
----------------------------------- | ---------------------- |
[list](#mq_machine::autostart_list) | A list of MQ managers. |




### list<a name='mq_machine::autostart_list'>

A list of MQ managers. The default value is fetched from the hiera key `ibm_profile::mq_manager`. To fill this list use a `yaml` representation of [iib_brokers](/docs/mq_config/mq_manager.html)
Type: `Hash`

Default:`$ibm_profile::mq_managers`

[Back to overview of mq_machine::autostart](#attributes)
