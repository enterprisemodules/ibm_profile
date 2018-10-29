This class is the default implementation for setting the firewall rules for your IIB sever.

Using hiera, you can customize some of the aspects of this process.

When these customizations aren't enough, you can replace the class with your own class. See [ibm_profile::iib_machine](./iib_machine.html) for an explanation on how to do this.

<%- include_attributes [
  :ports,
  :manage_service,
] %>
