The name of the class you want to execute directly **after** the `deployments` class.

You can use hiera to set this value. Here is an example:

```yaml
ibm_profile::iib_machine::after_deployments:  my_module::my_class
```
