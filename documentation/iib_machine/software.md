---
title: iib machine::software
keywords: documentation
layout: documentation
sidebar: ibm_profile_sidebar
toc: false
---
## Overview

This class allows you to setup your IIB software on your system.





## Attributes



Attribute Name                                            | Short Description                                                           |
--------------------------------------------------------- | --------------------------------------------------------------------------- |
[iib_os_user](#iib_machine::software_iib_os_user)         | The OS user to use for the installation of the IIB software.                |
[source_location](#iib_machine::software_source_location) | The location where the IIB installation can find the siftware distribution. |
[version](#iib_machine::software_version)                 | The version of IIB to install.                                              |




### version<a name='iib_machine::software_version'>

The version of IIB to install.



[Back to overview of iib_machine::software](#attributes)

### source_location<a name='iib_machine::software_source_location'>

The location where the IIB installation can find the siftware distribution. This can be a:

- directory
- http url
- puppet url


[Back to overview of iib_machine::software](#attributes)

### iib_os_user<a name='iib_machine::software_iib_os_user'>

The OS user to use for the installation of the IIB software.

The default is: `iibadmin`

[Back to overview of iib_machine::software](#attributes)
