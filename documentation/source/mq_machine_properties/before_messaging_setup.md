The name of the class you want to execute directly **before** the `messaging_setup` class.

You can use hiera to set this value. Here is an example:

```yaml
ibm_profile::mq_machine::before_messaging_setup:  my_module::my_class
```
