#++--++
#--++--
class ibm_profile::mq_machine::autostart(
  Hash $list = $ibm_profile::mq_managers,
) inherits ibm_profile {
  echo {"Ensure Autostart for MQ Manager(s) ${list.keys.join(', ')}":
    withpath => false,
  }
  $list.keys.each |$qm| {
    mq_install::autostart {$qm:
      ensure => 'present'
    }
  }
}
