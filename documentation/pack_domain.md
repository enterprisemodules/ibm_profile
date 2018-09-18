---
title: pack domain
keywords: documentation
layout: documentation
sidebar: ibm_profile_sidebar
toc: false
---
## Overview

This class is the default implementation for packing a domain on the current server. The packed domain can be used to create other WebLogic nodes in the same domain. When you are creating just a single node WebLogic server, you can skip this class.

Using hiera, you can customize some of the aspects of this process.

When these customizations aren't enough, you can replace the class with your own class. See [ibm_profile::admin)_server](./admin)_server.html) for an explanation on how to do this.





## Attributes



Attribute Name                                  | Short Description                                                    |
----------------------------------------------- | -------------------------------------------------------------------- |
[domain_name](#pack_domain_domain_name)         | The name of the WebLogic domain.                                     |
[domains_dir](#pack_domain_domains_dir)         | The top-level directory where the domain directories will reside in. |
[jdk_home](#pack_domain_jdk_home)               | The location where the JDK is installed.                             |
[middleware_home](#pack_domain_middleware_home) | The Oracle middleware home directory.                                |
[os_group](#pack_domain_os_group)               | The os group to use for WebLogic.                                    |
[os_user](#pack_domain_os_user)                 | The os user to use for WebLogic.                                     |
[weblogic_home](#pack_domain_weblogic_home)     | The directory used as WebLogic home
                                 |




### domain_name<a name='pack_domain_domain_name'>

The name of the WebLogic domain. This will be used both as the REAL WebLogic domain name, and also be used by Puppet as a designator for Puppet resources. (e.g. the name before the slash `my_domain/wls_queue1`).

The change the domain name, use the hiera key: `ibm_profile::domain_name`. This will make sure the correct domain name gets used in all classes.

The default value is: `MYDOMAIN`

[Back to overview of pack_domain](#attributes)

### middleware_home<a name='pack_domain_middleware_home'>

The Oracle middleware home directory.

This value is used in multiple places. To make sure in all classed the correct value is used, use the hiera key `ibm_profile::middleware_home` to change it to your requested value.

Default value: `/opt/oracle/middleware12`

[Back to overview of pack_domain](#attributes)

### weblogic_home<a name='pack_domain_weblogic_home'>

The directory used as WebLogic home

This value is used in multiple places. To make sure in all classed the correct value is used, use the hiera key `ibm_profile::weblogic_home` to change it to your requested value.

Default value: `/opt/oracle/middleware12/wlserver`


[Back to overview of pack_domain](#attributes)

### jdk_home<a name='pack_domain_jdk_home'>

The location where the JDK is installed.

This value is used in multiple places. To make sure in all classed the correct value is used, use the hiera key `ibm_profile::jdk_home` to change it to your requested value.

The default value is: `/usr/java/jdk1.8.0_152`

[Back to overview of pack_domain](#attributes)

### domains_dir<a name='pack_domain_domains_dir'>

The top-level directory where the domain directories will reside in. 

This value is used in multiple places. To make sure in all classed the correct value is used, use the hiera key `ibm_profile::domains_dir` to change it to your requested value.


The default value is:  `/opt/oracle/domains`

[Back to overview of pack_domain](#attributes)

### os_user<a name='pack_domain_os_user'>

The os user to use for WebLogic.

This value is used in multiple places. To make sure in all classed the correct value is used, use the hiera key `ibm_profile::basic_domain::os_user` to change it to your requested value.

Default value: `oracle`

[Back to overview of pack_domain](#attributes)

### os_group<a name='pack_domain_os_group'>

The os group to use for WebLogic.

This value is used in multiple places. To make sure in all classed the correct value is used, use the hiera key `ibm_profile::basic_domain::os_group` to change it to your requested value.

Default value: `dba`

[Back to overview of pack_domain](#attributes)
