This class is the default implementation for making sure the OS sysctl settings on your system are set correctly for IIB.

Using hiera, you can customize some of the aspects of this process.

When these customizations aren't enough, you can replace the class with your own class. See [ibm_profile::iib_machine](./iib_machine.html) for an explanation on how to do this.


<%- include_attributes [
  :list,
] %>
