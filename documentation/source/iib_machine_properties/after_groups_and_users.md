The name of the class you want to execute directly **after** the `groups_and_users` class.

You can use hiera to set this value. Here is an example:

```yaml
ibm_profile::iib_machine::after_groups_and_users:  my_module::my_class
```
