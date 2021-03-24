---
title: iib machine::sysctl
keywords: documentation
layout: documentation
sidebar: ibm_profile_sidebar
toc: false
---
## Overview

This class is the default implementation for making sure the OS sysctl settings on your system are set correctly for IIB.

Using hiera, you can customize some of the aspects of this process.

When these customizations aren't enough, you can replace the class with your own class. See [ibm_profile::iib_machine](./iib_machine.html) for an explanation on how to do this.





If you want to play and experiment with this type, please take a look at our playgrounds. At our playgrounds, 
we provide you with a pre-installed environment, where you experiment with these Puppet types.

Look at our playgrounds [here](/playgrounds#mq)

## Attributes



Attribute Name                    | Short Description                                |
--------------------------------- | ------------------------------------------------ |
[list](#iib_machine::sysctl_list) | The list of sysctl parameters to ensure for IIB. |




### list<a name='iib_machine::sysctl_list'>

The list of sysctl parameters to ensure for IIB.

The default is: `{}`


Type: `Hash`


[Back to overview of iib_machine::sysctl](#attributes)
