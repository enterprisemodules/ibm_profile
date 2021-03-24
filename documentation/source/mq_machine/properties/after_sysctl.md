The name of the class you want to execute directly **after** the `sysctl` class.

You can use hiera to set this value. Here is an example:

```yaml
ibm_profile::mq_machine::after_sysctl:  my_module::my_class
```
