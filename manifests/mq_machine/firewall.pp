#++--++
#
# ibm_profile::firewall
#
# @summary This class is the default implementation for setting the firewall rules for your WebLogic sever.
# Using hiera, you can customize some of the aspects of this process.
# 
# When these customizations aren't enough, you can replace the class with your own class. See [ibm_profile::weblogic](./weblogic.html) for an explanation on how to do this.
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
          class {'ibm_profile::mq_machine::firewall::iptables':
            ports          => $ports,
            manage_service => $manage_service,
          }
        }
        '7': {
          class {'ibm_profile::mq_machine::firewall::firewalld':
            ports          => $ports,
            manage_service => $manage_service,
          }
        }
        default: { fail 'unsupported OS version when checking firewall service'}
      }
    }
    'Solaris':{
      warning 'No firewall rules added on Solaris.'
    }
    default: {
        fail "${::operatingsystem} is not supported."
    }
  }
}
