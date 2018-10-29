---
title: iib machine::firewall
keywords: documentation
layout: documentation
sidebar: ibm_profile_sidebar
toc: false
---
## Overview

This class is the default implementation for setting the firewall rules for your IIB sever.

Using hiera, you can customize some of the aspects of this process.

When these customizations aren't enough, you can replace the class with your own class. See [ibm_profile::iib_machine](./iib_machine.html) for an explanation on how to do this.




## Attributes



Attribute Name                                          | Short Description |
------------------------------------------------------- | ----------------- |
[manage_service](#iib_machine::firewall_manage_service) |                   |
[ports](#iib_machine::firewall_ports)                   |                   |




### ports<a name='iib_machine::firewall_ports'>

The ports to open in the firewall.

[Back to overview of iib_machine::firewall](#attributes)

### manage_service<a name='iib_machine::firewall_manage_service'>

Specifies if you want to manege the `firewalld` or `iptables` service.

[Back to overview of iib_machine::firewall](#attributes)
