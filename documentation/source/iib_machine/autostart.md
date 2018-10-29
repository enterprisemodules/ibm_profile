This class enables autostart for the specfied brokers. This means a `systemctl` unit is created and the named brokers are added. For autostart to be enabled, the class needs the OS user and the OS group the broker will run in. It also needs the version of IIB.

<%- include_attributes [
  :list,
  :version,
  :iib_os_user,
  :iib_os_group,
] %>
