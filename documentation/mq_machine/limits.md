---
title: mq machine::limits
keywords: documentation
layout: documentation
sidebar: ibm_profile_sidebar
toc: false
---
## Overview

This class is the default implementation for making sure the OS Limits on your system are set correctly for MQ.

Using hiera, you can customize some of the aspects of this process.

When these customizations aren't enough, you can replace the class with your own class. See [ibm_profile::mq_machine](./mq_machine.html) for an explanation on how to do this.





If you want to play and experiment with this type, please take a look at our playgrounds. At our playgrounds, 
we provide you with a pre-installed environment, where you experiment with these Puppet types.

Look at our playgrounds [here](/playgrounds#mq)

## Attributes



Attribute Name                   | Short Description                             |
-------------------------------- | --------------------------------------------- |
[list](#mq_machine::limits_list) | The list of security limits to ensure for MQ. |




### list<a name='mq_machine::limits_list'>

The list of security limits to ensure for MQ.

The default is:

```yaml
mqm/nofile":
  soft: 20480
  hard: 20480
mqm/nproc":
  soft: 4096
  hard: 4096
```


Type: `Hash`


[Back to overview of mq_machine::limits](#attributes)
