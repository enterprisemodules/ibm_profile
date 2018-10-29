#++--++
#
# ibm_profile::mq_machine::mq_web
#
# @summary This class allows you to setup your MQ web configuration.
# Use use a `yaml` representation of [mq_web](/docs/mq_config/mq_web.html) to specify all properties and params of the service.
#
# @param list
#    A single Hash of MQ Web.
#    Use use a `yaml` representation of [mq_web](/docs/mq_config/mq_web.html) to specify all properties and params of the MQ webs you need. 
#    The default is: `{}`
#
#--++--
class ibm_profile::mq_machine::mq_web(
  Hash $list,
) inherits ibm_profile {
  if $list.keys != [] {
    echo {'Configure MQ Web':
      withpath => false,
    }
  }
  ensure_resources('mq_web', $list)
}
