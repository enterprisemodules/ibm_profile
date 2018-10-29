
This class allows you to setup your IIB deployments. Use use a `yaml` representation of [iib_deployment](/docs/iib_config/iib_deployment.html) to specify all properties and params of the deployment you need. When a lot of the deployments have the same defaults, use the `defaults` parameter to specify a Hash of defaults.
<%- include_attributes [
  :defaults,
  :list,
] %>
