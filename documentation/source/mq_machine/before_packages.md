The name of the class you want to execute directly **before** the `packages` class.

You can use hiera to set this value. Here is an example:

```yaml
ibm_profile::weblogic::before_packages:  my_module::my_class
```
