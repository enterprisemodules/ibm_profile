The name of the class you want to execute directly **after** the `fixpack` class.

You can use hiera to set this value. Here is an example:

```yaml
ibm_profile::mq_machine::after_fixpack:  my_module::my_class
```
