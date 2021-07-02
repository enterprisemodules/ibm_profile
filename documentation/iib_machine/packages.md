---
title: iib machine::packages
keywords: documentation
layout: documentation
sidebar: ibm_profile_sidebar
toc: false
---
## Overview

This class is the default implementation for making sure the required packages are on your system.

Using hiera, you can customize some of the aspects of this process.

When these customizations aren't enough, you can replace the class with your own class. See [ibm_profile::iib_machine](./iib_machine.html) for an explanation on how to do this.





## Experience the Power of Puppet for IBM MQ

If you want to play and experiment with Puppet and IBM MQ, please take a look at our playgrounds. At our playgrounds, we provide you with a pre-installed environment, where you experiment fast and easy.

{% include super_hero.html title="For IBM MQ" ref="/playgrounds#mq" %}


## Attributes



Attribute Name                      | Short Description                         |
----------------------------------- | ----------------------------------------- |
[list](#iib_machine::packages_list) | The list of packages you want to install. |




### list<a name='iib_machine::packages_list'>

The list of packages you want to install.

The default value is: `{}`
Type: `Array[String[1]]`


[Back to overview of iib_machine::packages](#attributes)
