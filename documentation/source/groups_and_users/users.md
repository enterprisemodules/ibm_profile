The OS users to create for WebLogic.

The default value is:

```yaml
ibm_profile::weblogic::groups_and_users::users:
  oracle:
    uid:        54321
    gid:        dba
    groups:
    - dba
    shell:      /bin/bash
    password:   '$1$DSJ51vh6$4XzzwyIOk6Bi/54kglGk3.'
    home:       /home/oracle
    comment:    This user oracle was created by Puppet
    managehome: true
```