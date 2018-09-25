#++--++
#--++--
class ibm_profile(
  String[1] $mq_os_user,
  String[1] $mq_os_group,
  String[1] $iib_os_user,
  String[1] $iib_os_group,
  String[1] $source_location,
  Hash      $mq_managers,
) {}
