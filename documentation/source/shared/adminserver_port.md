The IP port the admin server process will run and listen on. 

This value is used in multiple places. To make sure in all classed the correct value is used, use the hiera key `ibm_profile::adminserver_port` to change it to your requested value.

The default value is:  `7001`