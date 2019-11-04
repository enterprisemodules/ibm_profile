#++--++
#
# ibm_profile::mq_machine::firewall
#
# @summary This class is the default implementation for setting the firewall rules for your MQ sever.
# Using hiera, you can customize some of the aspects of this process.
# 
# When these customizations aren't enough, you can replace the class with your own class. See [ibm_profile::mq_machine](./mq_machine.html) for an explanation on how to do this.
#
# @param ports
#    The ports to open in the firewall.
#
# @param manage_service
#    Specifies if you want to manege the `firewalld` or `iptables` service.
#
#--++--
class ibm_profile::mq_machine::firewall(
  Array[Integer]  $ports,
  Boolean         $manage_service,
) inherits ibm_profile {

  echo {"Firewall: ensuring tcp port(s) ${ports.join(',')} are open.":
    withpath => false,
  }

  case  $::operatingsystem {
    'RedHat', 'CentOS', 'OracleLinux': {
      case ($::os['release']['major']) {
        '4','5','6': {
          class {'::ibm_profile::mq_machine::firewall::iptables':
            ports          => $ports,
            manage_service => $manage_service,
          }
          contain ::ibm_profile::mq_machine::firewall::iptables
        }
        '7','8': {
          class {'::ibm_profile::mq_machine::firewall::firewalld':
            ports          => $ports,
            manage_service => $manage_service,
          }
          contain ::ibm_profile::mq_machine::firewall::firewalld
        }
        default: { fail 'unsupported OS version when checking firewall service'}
      }
    }
    'Solaris', 'AIX':{
      warning 'No firewall rules added on Solaris.'
    }
    default: {
        fail "${::operatingsystem} is not supported."
    }
  }
}
