#++--++
#
# ibm_profile::mq_machine::groups_and_users
#
# @summary This class is the default implementation for creating the required OS users and groups for the installation of MQ.
# Using hiera, you can customize some of the aspects of this process.
# 
# When these customizations aren't enough, you can replace the class with your own class. See [ibm_profile::mq_machine](./mq_machine.html) for an explanation on how to do this.
#
# @param users
#    The list of OS users to ensure.
#    The default is:
#    ```yaml
#      mqm:
#        uid:        995
#        gid:        mqm
#        home:       /var/mqm
#        comment:    This user was created by Puppet
#        managehome: true
#        password:   '$1$DSJ51vh6$4XzzwyIOk6Bi/54kglGk3.'
#        shell:      '/bin/bash'
#    ```
#
# @param groups
#    The list of OS groups to add to the system.
#    The default is:
#    ```yaml
#      "mqm": 
#        gid:  1001
#    ```
#
#--++--
class ibm_profile::mq_machine::groups_and_users(
  Hash  $users,
  Hash  $groups,
) inherits ibm_profile {
  echo {'MQ Groups and Users':
    withpath => false,
  }
  $defaults = { 'ensure' => 'present'}
  ensure_resources('user', $users, $defaults )
  ensure_resources('group', $groups, $defaults)
}
