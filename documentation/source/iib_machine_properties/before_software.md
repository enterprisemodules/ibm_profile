The name of the class you want to execute directly **before** the `software` class.

You can use hiera to set this value. Here is an example:

```yaml
ibm_profile::iib_machine::before_software:  my_module::my_class
```
