---
title: iib machine::deployments
keywords: documentation
layout: documentation
sidebar: ibm_profile_sidebar
toc: false
---
## Overview


This class allows you to setup your IIB deployments. Use use a `yaml` representation of [iib_deployment](/docs/iib_config/iib_deployment.html) to specify all properties and params of the deployment you need. When a lot of the deployments have the same defaults, use the `defaults` parameter to specify a Hash of defaults.




## Experience the Power of Puppet for IBM MQ

If you want to play and experiment with Puppet and IBM MQ, please take a look at our playgrounds. At our playgrounds, we provide you with a pre-installed environment, where you experiment fast and easy.

{% include super_hero.html title="For IBM MQ" ref="/playgrounds#mq" %}


## Attributes



Attribute Name                                 | Short Description                                               |
---------------------------------------------- | --------------------------------------------------------------- |
[defaults](#iib_machine::deployments_defaults) | a Hash of default properties added to all specfied deployments. |
[list](#iib_machine::deployments_list)         | a Hash of deployments.                                          |




### defaults<a name='iib_machine::deployments_defaults'>

a Hash of default properties added to all specfied deployments. Use [iib_deployment](/docs/iib_config/iib_deployment.html) to specify the defaults.

The default value is: `{}`

Type: `Hash`


[Back to overview of iib_machine::deployments](#attributes)

### list<a name='iib_machine::deployments_list'>

a Hash of deployments. Use [iib_deployment](/docs/iib_config/iib_deployment.html) to specify the defaults.

The default value is: `{}`

Type: `Hash`


[Back to overview of iib_machine::deployments](#attributes)
