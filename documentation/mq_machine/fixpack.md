---
title: mq machine::fixpack
keywords: documentation
layout: documentation
sidebar: ibm_profile_sidebar
toc: false
---
## Overview

This class allows you to install a certain fixpack 
on your system.





If you want to play and experiment with this type, please take a look at our playgrounds. At our playgrounds, 
we provide you with a pre-installed environment, where you experiment with these Puppet types.

Look at our playgrounds [here](/playgrounds#mq)

## Attributes



Attribute Name                                          | Short Description                                                    |
------------------------------------------------------- | -------------------------------------------------------------------- |
[source_location](#mq_machine::fixpack_source_location) | The url or directory where to find the IIB installation tar.gz file. |
[version](#mq_machine::fixpack_version)                 |                                                                      |




### version<a name='mq_machine::fixpack_version'>

The version of MQ to install.
Type: `]]`

Default:`undef`

[Back to overview of mq_machine::fixpack](#attributes)

### source_location<a name='mq_machine::fixpack_source_location'>

The url or directory where to find the IIB installation tar.gz file. You can use
either a file, a http url or a puppet url.
Type: `String`

Default:`$ibm_profile::source_location`

[Back to overview of mq_machine::fixpack](#attributes)
