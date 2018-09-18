---
title: description
keywords: documentation
layout: documentation
sidebar: ibm_profile_sidebar
toc: false
---
## Overview

## Overview

This module has a couple of convenient classes to help you setup your WebLogic environment:

- [`ibm_profile::weblogic`](/docs/ibm_profile/weblogic.html)       Ensure WebLogic is installed and patched
- [`ibm_profile::basic_domain`](/docs/ibm_profile/basic_domain.html)   Same as `weblogic` and create an empty domain.
- [`ibm_profile::admin_server`](/docs/ibm_profile/admin_server.html)   Same as `basic_domain` and create some machines and servers, clusters and some other WebLogic object.
- [`ibm_profile::node`](/docs/ibm_profile/node.html)           Same as `weblogic` and after that copy the domain from an admin server and load it.

All of these classes contain some steps. All of these stapes have default implementations, but you can add extra Puppet code to the catalog and remove or override the default implementation. This can all be done by adding values to your hiera files.






