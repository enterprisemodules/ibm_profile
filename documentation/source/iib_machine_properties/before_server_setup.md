The name of the class you want to execute directly **before** the `server_setup` class.

You can use hiera to set this value. Here is an example:

```yaml
ibm_profile::iib_machine::before_server_setup:  my_module::my_class
```
