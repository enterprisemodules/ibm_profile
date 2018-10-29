The name of the class you want to execute directly **before** the `autostart` class.

You can use hiera to set this value. Here is an example:

```yaml
ibm_profile::mq_machine::before_autostart:  my_module::my_class
```
