---
title: mq machine::packages
keywords: documentation
layout: documentation
sidebar: ibm_profile_sidebar
toc: false
---
## Overview

This class is the default implementation for making sure the required packages are on your system.

Using hiera, you can customize some of the aspects of this process.

When these customizations aren't enough, you can replace the class with your own class. See [ibm_profile::mq_machine](./mq_machine.html) for an explanation on how to do this.




## Attributes



Attribute Name                     | Short Description                         |
---------------------------------- | ----------------------------------------- |
[list](#mq_machine::packages_list) | The list of packages you want to install. |




### list<a name='mq_machine::packages_list'>

The list of packages you want to install.

The default value is: `{}`

[Back to overview of mq_machine::packages](#attributes)
