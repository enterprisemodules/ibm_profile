The name of the class you want to execute directly **before** the `groups_and_users` class.

You can use hiera to set this value. Here is an example:

```yaml
ibm_profile::mq_machine::before_groups_and_users:  my_module::my_class
```
