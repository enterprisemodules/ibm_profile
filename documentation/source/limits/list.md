The OS limits created for WebLogic.

The defaults are:

```yaml
ibm_profile::weblogic::limits::list:
  '*/nofile':
    soft: 2048
    hard: 8192
  'oracle/nofile':
    soft: 65536
    hard: 65536
  'oracle/nproc':
    soft: 2048
    hard: 16384
  'oracle/stack':
    soft: 10240
  'oracle/memlock':
    soft: 1048576
    hard: 1048576
```