The name of the class you want to execute directly **after** the `packages` class.

You can use hiera to set this value. Here is an example:

```yaml
ibm_profile::weblogic::after_packages:  my_module::my_class
```
