The IP port the nodemanager listens on.

This value is used in multiple places. To make sure in all classed the correct value is used, use the hiera key `ibm_profile::nodemanager_port` to change it to your requested value.

Default value: `5556`