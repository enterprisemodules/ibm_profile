Use this value if you want to skip or use your own class for stage `fixpack`.

## Use your own class

You can use hiera to set this value. Here is an example:

```yaml
ibm_profile::mq_machine::fixpack:  my_module::my_class
```

## Skip

You can use hiera to set this value. Here is an example:

```yaml
ibm_profile::mq_machine::fixpack:  skip
```