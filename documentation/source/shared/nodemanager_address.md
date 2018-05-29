The IP address the nodemanager will run and listen on.

This value is used in multiple places. To make sure in all classed the correct value is used, use the hiera key `ibm_profile::basic_domain::wls_domain::log_dir` to change it to your requested value.

Default value: `::fqdn`