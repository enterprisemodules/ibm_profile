This class is the default implementation for packing a domain on the current server. The packed domain can be used to create other WebLogic nodes in the same domain. When you are creating just a single node WebLogic server, you can skip this class.

Using hiera, you can customize some of the aspects of this process.

When these customizations aren't enough, you can replace the class with your own class. See [ibm_profile::admin)_server](./admin)_server.html) for an explanation on how to do this.


<%- include_attributes [
  :domain_name,
  :middleware_home,
  :weblogic_home,
  :jdk_home,
  :domains_dir,
  :os_user,
  :os_group,
] %>
