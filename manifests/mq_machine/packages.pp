#++--++
#--++--
class ibm_profile::mq_machine::packages(
  Array[String[1]] $list,
) inherits ibm_profile {
  echo {'MQ Packages':
    withpath => false,
  }

  ensure_packages($list, { 'ensure' => 'present'})
}
