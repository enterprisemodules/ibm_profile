---
title: ssh setup
keywords: documentation
layout: documentation
sidebar: ibm_profile_sidebar
toc: false
---
## Overview

This class is the default implementation for making sure the WebLogic account has ssh keys setup so it can passwordless copy files. This is required when copying the packed domain from an admin server to a WebLogic node. If you are building singles node WebLogic configurations, you can skip this class.

Using hiera, you can customize some of the aspects of this process.

When these customizations aren't enough, you can replace the class with your own class. See [ibm_profile::admin_server](./admin_server.html) for an explanation on how to do this.




## Attributes



Attribute Name                        | Short Description                 |
------------------------------------- | --------------------------------- |
[os_group](#ssh_setup_os_group)       | The os group to use for WebLogic. |
[os_user](#ssh_setup_os_user)         | The os user to use for WebLogic.  |
[private_key](#ssh_setup_private_key) |                                   |
[public_key](#ssh_setup_public_key)   |                                   |




### os_user<a name='ssh_setup_os_user'>

The os user to use for WebLogic.

This value is used in multiple places. To make sure in all classed the correct value is used, use the hiera key `ibm_profile::basic_domain::os_user` to change it to your requested value.

Default value: `oracle`

[Back to overview of ssh_setup](#attributes)

### os_group<a name='ssh_setup_os_group'>

The os group to use for WebLogic.

This value is used in multiple places. To make sure in all classed the correct value is used, use the hiera key `ibm_profile::basic_domain::os_group` to change it to your requested value.

Default value: `dba`

[Back to overview of ssh_setup](#attributes)

### private_key<a name='ssh_setup_private_key'>



[Back to overview of ssh_setup](#attributes)

### public_key<a name='ssh_setup_public_key'>



[Back to overview of ssh_setup](#attributes)
