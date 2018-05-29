The top-level directory where the domain directories will reside in. 

This value is used in multiple places. To make sure in all classed the correct value is used, use the hiera key `ibm_profile::domains_dir` to change it to your requested value.


The default value is:  `/opt/oracle/domains`