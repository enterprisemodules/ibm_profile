---
title: iib machine::groups and users
keywords: documentation
layout: documentation
sidebar: ibm_profile_sidebar
toc: false
---
## Overview

This class is the default implementation for creating the required OS users and groups for the installation of IIB.

Using hiera, you can customize some of the aspects of this process.

When these customizations aren't enough, you can replace the class with your own class. See [ibm_profile::iib_machine](./iib_machine.html) for an explanation on how to do this.




If you want to play and experiment with this type, please take a look at our playgrounds. At our playgrounds, 
we provide you with a pre-installed environment, where you experiment with these Puppet types.

Look at our playgrounds [here](/playgrounds#mq)

## Attributes



Attribute Name                                  | Short Description                           |
----------------------------------------------- | ------------------------------------------- |
[groups](#iib_machine::groups_and_users_groups) | The list of OS groups to add to the system. |
[users](#iib_machine::groups_and_users_users)   | The list of OS users to ensure.             |




### users<a name='iib_machine::groups_and_users_users'>

The list of OS users to ensure.

The default is:

```yaml
  iibadmin:
    uid:        995
    gid:        "iibadmin"
    home:       "/var/iibadmin"
    comment:    This user was created by Puppet
    managehome: true
    password:   '$1$DSJ51vh6$4XzzwyIOk6Bi/54kglGk3.'
    shell:      '/bin/bash'
```
Type: `Hash`


[Back to overview of iib_machine::groups_and_users](#attributes)

### groups<a name='iib_machine::groups_and_users_groups'>

The list of OS groups to add to the system. 

The default is:

```yaml
  "mqm": 
    gid:  1001
  mqbrkrs: 
    gid:  1005
```
Type: `Hash`


[Back to overview of iib_machine::groups_and_users](#attributes)
