---
title: installation
keywords: documentation
layout: documentation
sidebar: ibm_profile_sidebar
toc: false
---
## Overview

To install these modules, you can use a `Puppetfile`

```
mod 'enterprisemodules/ibm_profile'               ,'0.1.0'
```

Then use the `librarian-puppet` or `r10K` to install the software.

You can also install the software using the `puppet module`  command:

```
puppet module install enterprisemodules-ibm_profile
```





