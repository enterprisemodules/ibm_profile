#++--++
#
# ibm_profile::iib_machine::groups_and_users
#
# @summary This class is the default implementation for creating the required OS users and groups for the installation of IIB.
# Using hiera, you can customize some of the aspects of this process.
# 
# When these customizations aren't enough, you can replace the class with your own class. See [ibm_profile::iib_machine](./iib_machine.html) for an explanation on how to do this.
#
# @param users
#    The list of OS users to ensure.
#    The default is:
#    ```yaml
#      iibadmin:
#        uid:        995
#        gid:        "iibadmin"
#        home:       "/var/iibadmin"
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
#      mqbrkrs: 
#        gid:  1005
#    ```
#
#--++--
class ibm_profile::iib_machine::groups_and_users(
  Hash  $users,
  Hash  $groups,
) inherits ibm_profile {
  echo {'IIB Groups and Users':
    withpath => false,
  }
  $defaults = { 'ensure' => 'present'}
  ensure_resources('user', $users, $defaults )
  ensure_resources('group', $groups, $defaults)
}
