The location where the JDK is installed.

This value is used in multiple places. To make sure in all classed the correct value is used, use the hiera key `ibm_profile::jdk_home` to change it to your requested value.

The default value is: `/usr/java/jdk1.8.0_152`