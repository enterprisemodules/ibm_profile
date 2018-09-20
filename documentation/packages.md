---
title: packages
keywords: documentation
layout: documentation
sidebar: ibm_profile_sidebar
toc: false
---
## Overview


This class is the default implementation for making sure the required packages are on your system.

Using hiera, you can customize some of the aspects of this process.

When these customizations aren't enough, you can replace the class with your own class. See [ibm_profile::weblogic](./weblogic.html) for an explanation on how to do this.





## Attributes



Attribute Name         | Short Description                                            |
---------------------- | ------------------------------------------------------------ |
[list](#packages_list) | The required packages for a succesful WebLogic installation. |




### list<a name='packages_list'>

The required packages for a succesful WebLogic installation.

The defaults are:

```yaml
ibm_profile::weblogic::packages::list:
  - binutils.x86_64
  - unzip.x86_64
```
Type: `Array[String[1]]`


[Back to overview of packages](#attributes)
