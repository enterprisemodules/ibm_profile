---
title: mq machine::software
keywords: documentation
layout: documentation
sidebar: ibm_profile_sidebar
toc: false
---
## Overview

This class allows you to setup your IIB software on your system. Specify the version and the location where to find the software kit.





## Experience the Power of Puppet for IBM MQ

If you want to play and experiment with Puppet and IBM MQ, please take a look at our playgrounds. At our playgrounds, we provide you with a pre-installed environment, where you experiment fast and easy.

{% include super_hero.html title="For IBM MQ" ref="/playgrounds#mq" %}


## Attributes



Attribute Name                                           | Short Description                                                    |
-------------------------------------------------------- | -------------------------------------------------------------------- |
[source_location](#mq_machine::software_source_location) | The url or directory where to find the IIB installation tar.gz file. |
[version](#mq_machine::software_version)                 |                                                                      |




### version<a name='mq_machine::software_version'>

The version of MQ to install.
Type: `Pattern[/\d+\.\d+\.\d+\.\d/]`


[Back to overview of mq_machine::software](#attributes)

### source_location<a name='mq_machine::software_source_location'>

The url or directory where to find the IIB installation tar.gz file. You can use
either a file, a http url or a puppet url.
Type: `String`

Default:`$ibm_profile::source_location`

[Back to overview of mq_machine::software](#attributes)
