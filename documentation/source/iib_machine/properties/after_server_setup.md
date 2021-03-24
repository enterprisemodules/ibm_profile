The name of the class you want to execute directly **after** the `server_setup` class.

You can use hiera to set this value. Here is an example:

```yaml
ibm_profile::iib_machine::after_server_setup:  my_module::my_class
```
