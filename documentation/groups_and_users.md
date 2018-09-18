---
title: groups and users
keywords: documentation
layout: documentation
sidebar: ibm_profile_sidebar
toc: false
---
## Overview

This class is the default implementation for creating the required OS users and groups for the installation of WebLogic.

Using hiera, you can customize some of the aspects of this process.

When these customizations aren't enough, you can replace the class with your own class. See [ibm_profile::weblogic](./weblogic.html) for an explanation on how to do this.






## Attributes



Attribute Name                     | Short Description                          |
---------------------------------- | ------------------------------------------ |
[groups](#groups_and_users_groups) | The list of groups to create for WebLogic. |
[users](#groups_and_users_users)   | The OS users to create for WebLogic.       |




### users<a name='groups_and_users_users'>

The OS users to create for WebLogic.

The default value is:

```yaml
ibm_profile::weblogic::groups_and_users::users:
  oracle:
    uid:        54321
    gid:        dba
    groups:
    - dba
    shell:      /bin/bash
    password:   '$1$DSJ51vh6$4XzzwyIOk6Bi/54kglGk3.'
    home:       /home/oracle
    comment:    This user oracle was created by Puppet
    managehome: true
```
Type: `Hash`


[Back to overview of groups_and_users](#attributes)

### groups<a name='groups_and_users_groups'>

The list of groups to create for WebLogic.

The default value is:

```yaml
ibm_profile::weblogic::groups_and_users::groups:
  dba:
    gid:  54321,
```

Type: `Hash`


[Back to overview of groups_and_users](#attributes)
