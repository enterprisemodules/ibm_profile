The name of the class you want to execute directly **before** the `mq_web` class.

You can use hiera to set this value. Here is an example:

```yaml
ibm_profile::mq_machine::before_mq_web:  my_module::my_class
```
