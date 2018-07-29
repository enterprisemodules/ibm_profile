#++--++
#--++--
class ibm_profile::mq_machine::authorization_setup(
  Hash $authentication_defaults,
  Hash $authentication_info,
  Hash $authorization_defaults,
  Hash $authorization_list,
  Hash $channel_authentication_list,
) inherits ibm_profile {

  echo {'MQ Authorizations & Authentication settings': withpath => false,}
  echo {"MQ channel( authentition record(s) ${channel_authentication_list.keys.join(', ')}": withpath => false}

  create_resources('mq_authentication_info', $authentication_info, $authentication_defaults )
  create_resources('mq_authorization', $authorization_list, $authorization_defaults )
  create_resources('mq_channel_authentication', $channel_authentication_list, {})

}
