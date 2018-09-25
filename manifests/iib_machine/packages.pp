#++--++
#--++--
class ibm_profile::iib_machine::packages(
  Array[String[1]] $list,
) inherits ibm_profile {
  echo {'IIB Packages':
    withpath => false,
  }

  ensure_packages($list, { 'ensure' => 'present'})
}
