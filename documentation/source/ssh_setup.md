This class is the default implementation for making sure the WebLogic account has ssh keys setup so it can passwordless copy files. This is required when copying the packed domain from an admin server to a WebLogic node. If you are building singles node WebLogic configurations, you can skip this class.

Using hiera, you can customize some of the aspects of this process.

When these customizations aren't enough, you can replace the class with your own class. See [ibm_profile::admin_server](./admin_server.html) for an explanation on how to do this.


<%- include_attributes [
  :os_user,
  :os_group,
  :private_key,
  :public_key,
] %>