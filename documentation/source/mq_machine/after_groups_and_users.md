The name of the class you want to execute directly **after** the `groups_and_usesr` class.

You can use hiera to set this value. Here is an example:

```yaml
ibm_profile::weblogic::after_groups_and_usesr:  my_module::my_class
```
