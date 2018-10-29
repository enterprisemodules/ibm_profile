The name of the class you want to execute directly **after** the `manager_setup` class.

You can use hiera to set this value. Here is an example:

```yaml
ibm_profile::mq_machine::after_manager_setup:  my_module::my_class
```
