The name of the class you want to execute directly **after** the `limits` class.

You can use hiera to set this value. Here is an example:

```yaml
ibm_profile::mq_machine::after_limits:  my_module::my_class
```
