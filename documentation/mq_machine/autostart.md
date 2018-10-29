---
title: mq machine::autostart
keywords: documentation
layout: documentation
sidebar: ibm_profile_sidebar
toc: false
---
## Overview

This class enables autostart for the specfied MQ managers. This means a `systemctl` unit is created and the named MQ managers are added. 




## Attributes



Attribute Name                      | Short Description      |
----------------------------------- | ---------------------- |
[list](#mq_machine::autostart_list) | A list of MQ managers. |




### list<a name='mq_machine::autostart_list'>

A list of MQ managers. The default value is fetched from the hiera key `ibm_profile::mq_manager`. To fill this list use a `yaml` representation of [iib_brokers](/docs/mq_config/mq_manager.html)

[Back to overview of mq_machine::autostart](#attributes)
