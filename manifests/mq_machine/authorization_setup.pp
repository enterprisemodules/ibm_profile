#++--++
#--++--
class ibm_profile::mq_machine::authorization_setup(
  Hash $authentication_defaults,
  Hash $authentication_info,
  Hash $authorization_defaults,
  Hash $authorization_list,

) inherits ibm_profile {
  echo {'MQ Authorizations & Authentication settings':
    withpath => false,
  }
  create_resources('mq_authentication_info', $authentication_info, $authentication_defaults )
  create_resources('mq_authorization', $authorization_list, $authorization_defaults )
}
