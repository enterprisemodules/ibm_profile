The address the admin server process will run and listen on. 

This value is used in multiple places. To make sure in all classed the correct value is used, use the hiera key `ibm_profile::adminserver_address` to change it to your requested value.

The default value is: The fact `fqdn`