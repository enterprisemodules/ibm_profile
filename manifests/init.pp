#
# ibm_profile
#
#
# See the file "LICENSE" for the full license governing this code.
#
class ibm_profile (
  String[1] $iib_os_group,
  String[1] $iib_os_user,
  Hash      $mq_managers,
  String[1] $mq_os_group,
  String[1] $mq_os_user,
  String[1] $source_location
) {}
