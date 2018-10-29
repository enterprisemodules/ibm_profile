#++--++
#
# ibm_profile::mq_machine::authorization_setup
#
# @summary This class allows you to setup your MQ messaging security.
# It has support for:
# 
# - authentication_info    (See [mq_authentication_info](/docs/mq_config/mq_authentication_info.html))
# - authorization          (See [mq_authorization](/docs/mq_config/mq_authorization.html))
# - channel_authentication (See [mq_channel_authentication](/docs/mq_config/mq_channel_authentication.html))
# 
#  Use use a `yaml` representation of the specfied resource to specify all properties and params of the objects you need. 
#  
#  When a lot of the objects  have the same defaults, use the `defaults` parameter to specify a Hash of defaults.
#
# @param authentication_defaults
#    The defaults to use for all MQ authentication_info records.
#    Use use a `yaml` representation of [mq_authentication_info](/docs/mq_config/mq_authentication_info.html) to specify all properties and params of the MQ authentication_info records you need. 
#    The default is: `{}`
#
# @param authentication_info
#    A Hash of MQ authentication_info records.
#    Use use a `yaml` representation of [mq_authentication_info](/docs/mq_config/mq_authentication_info.html) to specify all properties and params of the MQ authentication_info records you need. 
#    The default is: `{}`
#
# @param authorization_defaults
#    The defaults to use for all MQ authorization records.
#    Use use a `yaml` representation of [mq_authorization](/docs/mq_config/mq_authorization.html) to specify all properties and params of the MQ authorization records you need. 
#    The default is: `{}`
#
# @param authorization_list
#    A Hash of MQ authorization records.
#    Use use a `yaml` representation of [mq_authorization](/docs/mq_config/mq_authorization.html) to specify all properties and params of the MQ authorization records you need. 
#    The default is: `{}`
#
# @param channel_authentication_list
#    a Hash of MQ channel authentication records.
#    Use use a `yaml` representation of [mq_channel_authentication](/docs/mq_config/mq_channel_authentication.html) to specify all properties and params of the MQ channel authentication records you need. 
#    The default is: `{}`
#
#--++--
class ibm_profile::mq_machine::authorization_setup(
  Hash $authentication_defaults,
  Hash $authentication_info,
  Hash $authorization_defaults,
  Hash $authorization_list,
  Hash $channel_authentication_list,
  Hash $channel_authentication_defaults,
) inherits ibm_profile {

  mq_config::qmgrs_in($authentication_info).each |$qmgr| {
    if ! mq_config::is_standby($qmgr) {
      $list = mq_config::resources_for($authentication_info, $qmgr)
      echo {'MQ Authorizations & Authentication settings': withpath => false,}
      ensure_resources('mq_authentication_info', $list, $authentication_defaults)
    } else {
      echo {"MQ Authorizations & Authentication settings on ${qmgr} skipping because it is in standby mode": withpath => false}
    }
  }

  mq_config::qmgrs_in($channel_authentication_list).each |$qmgr| {
    if ! mq_config::is_standby($qmgr) {
      $list = mq_config::resources_for($channel_authentication_list, $qmgr)
      echo {"MQ channel authentication record(s) ${list.keys.join(', ')}": withpath => false,}
      ensure_resources('mq_channel_authentication', $list, $channel_authentication_defaults)
    } else {
      echo {"MQ channel authentication record(s) on ${qmgr} skipping because it is in standby mode": withpath => false}
    }
  }
}
