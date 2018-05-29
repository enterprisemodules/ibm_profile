#++--++
#--++--
class ibm_profile::mq_machine::groups_and_users(
  Hash  $users,
  Hash  $groups,
) inherits ibm_profile {
  echo {'MQ Groups and Users':
    withpath => false,
  }
  $defaults = { 'ensure' => 'present'}
  create_resources('user', $users, $defaults )
  create_resources('group', $groups, $defaults)
}
