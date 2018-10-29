---
title: iib machine::limits
keywords: documentation
layout: documentation
sidebar: ibm_profile_sidebar
toc: false
---
## Overview

This class is the default implementation for making sure the OS Limits on your system are set correctly for IIB.

Using hiera, you can customize some of the aspects of this process.

When these customizations aren't enough, you can replace the class with your own class. See [ibm_profile::iib_machine](./iib_machine.html) for an explanation on how to do this.





## Attributes



Attribute Name                    | Short Description                              |
--------------------------------- | ---------------------------------------------- |
[list](#iib_machine::limits_list) | The list of security limits to ensure for IIB. |




### list<a name='iib_machine::limits_list'>

The list of security limits to ensure for IIB.

The default is: `{}`



[Back to overview of iib_machine::limits](#attributes)
