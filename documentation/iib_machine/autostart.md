---
title: iib machine::autostart
keywords: documentation
layout: documentation
sidebar: ibm_profile_sidebar
toc: false
---
## Overview

This class enables autostart for the specfied brokers. This means a `systemctl` unit is created and the named brokers are added. For autostart to be enabled, the class needs the OS user and the OS group the broker will run in. It also needs the version of IIB.




If you want to play and experiment with this type, please take a look at our playgrounds. At our playgrounds, 
we provide you with a pre-installed environment, where you experiment with these Puppet types.

Look at our playgrounds [here](/playgrounds#mq)

## Attributes



Attribute Name                                       | Short Description                                     |
---------------------------------------------------- | ----------------------------------------------------- |
[iib_os_group](#iib_machine::autostart_iib_os_group) | The OS group used for autostarting the brokers.       |
[iib_os_user](#iib_machine::autostart_iib_os_user)   | The OS user used for autostarting the brokers.        |
[list](#iib_machine::autostart_list)                 | A list of brokers.                                    |
[version](#iib_machine::autostart_version)           | The IIB version to use when autostarting the brokers. |




### list<a name='iib_machine::autostart_list'>

A list of brokers. The default value is fetched from the hiera key `ibm_profile::iib_brokers`. To fill this list use a `yaml` representation of [iib_brokers](/docs/iib_config/iib_broker.html)
Type: `Hash`


[Back to overview of iib_machine::autostart](#attributes)

### version<a name='iib_machine::autostart_version'>

The IIB version to use when autostarting the brokers. The default is value is fetched from the hiera key `ibm_profile::iib_machine::software::version`.
Type: `String`


[Back to overview of iib_machine::autostart](#attributes)

### iib_os_user<a name='iib_machine::autostart_iib_os_user'>

The OS user used for autostarting the brokers.

The default is `iibadmin`
Type: `String`


[Back to overview of iib_machine::autostart](#attributes)

### iib_os_group<a name='iib_machine::autostart_iib_os_group'>

The OS group used for autostarting the brokers.

The default is `mqbrkrs`
Type: `String`


[Back to overview of iib_machine::autostart](#attributes)
