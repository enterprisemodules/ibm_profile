#++--++
#--++--
class ibm_profile::mq_machine::firewall::iptables(
  Array[Integer]  $ports,
  Boolean         $manage_service,
) {
  unless defined(Package['iptables']) {
    package {'iptables':
      ensure => 'present',
    }
  }

  $ports.each |$port| {
    firewall { "500 accept tcp port ${port} for MQ":
      proto  => 'tcp',
      action => 'accept',
    }
  }

  if $manage_service {
    service { 'iptables':
        ensure    => true,
        enable    => true,
        hasstatus => true,
    }
  }
}
