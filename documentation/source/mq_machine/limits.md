This class is the default implementation for making sure the OS Limits on your system are set correctly for MQ.

Using hiera, you can customize some of the aspects of this process.

When these customizations aren't enough, you can replace the class with your own class. See [ibm_profile::mq_machine](./mq_machine.html) for an explanation on how to do this.


<%- include_attributes [
  :list,
] %>
