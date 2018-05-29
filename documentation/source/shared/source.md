The location where the classes can find the software. 

You can specify a local directory, a Puppet url or an http url.

This value is used in multiple places. To make sure in all classed the correct value is used, use the hiera key `ibm_profile::source` to change it to your requested value.

The default is : `puppet:///modules/software/`
