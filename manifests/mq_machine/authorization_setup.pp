#++--++
#--++--
class ibm_profile::mq_machine::authorization_setup(
) inherits ibm_profile {
  echo {'MQ Authorizations':
    withpath => false,
  }
}
