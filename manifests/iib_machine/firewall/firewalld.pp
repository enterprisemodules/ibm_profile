#++--++
#--++--
class ibm_profile::iib_machine::firewall::firewalld(
  Array[Integer]  $ports,
  Boolean         $manage_service,
) {
  unless defined(Package['firewalld']) {
    package {'firewalld':
      ensure => 'present',
    }
  }
  $ports.each |$port| {
    firewalld_port { "600 accept tcp port ${port} for IIB":
      ensure   => present,
      zone     => 'external',
      port     => $port,
      protocol => 'tcp',
    }
  }

  if $manage_service {
    service { 'firewalld':
        ensure    => true,
        enable    => true,
        hasstatus => true,
    }
  }
}
