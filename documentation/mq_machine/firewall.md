---
title: mq machine::firewall
keywords: documentation
layout: documentation
sidebar: ibm_profile_sidebar
toc: false
---
## Overview

This class is the default implementation for setting the firewall rules for your MQ sever.

Using hiera, you can customize some of the aspects of this process.

When these customizations aren't enough, you can replace the class with your own class. See [ibm_profile::mq_machine](./mq_machine.html) for an explanation on how to do this.





## Experience the Power of Puppet for IBM MQ

If you want to play and experiment with Puppet and IBM MQ, please take a look at our playgrounds. At our playgrounds, we provide you with a pre-installed environment, where you experiment fast and easy.

{% include super_hero.html title="For IBM MQ" ref="/playgrounds#mq" %}


## Attributes



Attribute Name                                         | Short Description |
------------------------------------------------------ | ----------------- |
[manage_service](#mq_machine::firewall_manage_service) |                   |
[ports](#mq_machine::firewall_ports)                   |                   |




### ports<a name='mq_machine::firewall_ports'>

The ports to open in the firewall.
Type: `Array[Integer]`


[Back to overview of mq_machine::firewall](#attributes)

### manage_service<a name='mq_machine::firewall_manage_service'>

Specifies if you want to manege the `firewalld` or `iptables` service.
Type: `Boolean`


[Back to overview of mq_machine::firewall](#attributes)
