#++--++
#
# ibm_profile::mq_machine::autostart
#
# @summary This class enables autostart for the specfied MQ managers.
# This means a `systemctl` unit is created and the named MQ managers are added.
#
# @param [Hash] list
#    A list of MQ managers.
#    The default value is fetched from the hiera key `ibm_profile::mq_manager`. To fill this list use a `yaml` representation of [iib_brokers](/docs/mq_config/mq_manager.html)
#
#--++--
class ibm_profile::mq_machine::autostart(
  Hash $list = $ibm_profile::mq_managers,
) inherits ibm_profile {
  echo {"Ensure Autostart for MQ Manager(s) ${list.keys.join(', ')}":
    withpath => false,
  }
  $list.keys.each |$qm| {
    mq_install::autostart {$qm:
      ensure => 'present',
    }
  }
}
