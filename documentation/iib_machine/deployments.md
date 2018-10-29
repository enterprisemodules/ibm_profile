---
title: iib machine::deployments
keywords: documentation
layout: documentation
sidebar: ibm_profile_sidebar
toc: false
---
## Overview


This class allows you to setup your IIB deployments. Use use a `yaml` representation of [iib_deployment](/docs/iib_config/iib_deployment.html) to specify all properties and params of the deployment you need. When a lot of the deployments have the same defaults, use the `defaults` parameter to specify a Hash of defaults.



## Attributes



Attribute Name                                 | Short Description                                               |
---------------------------------------------- | --------------------------------------------------------------- |
[defaults](#iib_machine::deployments_defaults) | a Hash of default properties added to all specfied deployments. |
[list](#iib_machine::deployments_list)         | a Hash of deployments.                                          |




### defaults<a name='iib_machine::deployments_defaults'>

a Hash of default properties added to all specfied deployments. Use [iib_deployment](/docs/iib_config/iib_deployment.html) to specify the defaults.

The default value is: `{}`


[Back to overview of iib_machine::deployments](#attributes)

### list<a name='iib_machine::deployments_list'>

a Hash of deployments. Use [iib_deployment](/docs/iib_config/iib_deployment.html) to specify the defaults.

The default value is: `{}`


[Back to overview of iib_machine::deployments](#attributes)
