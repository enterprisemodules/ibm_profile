#++--++
#--++--
class ibm_profile::mq_machine::software(
  Pattern[/\d+\.\d+\.\d+\.\d/] $version,
  Boolean                      $install_ams,
  Boolean                      $install_ft,
  Boolean                      $install_client,
  Boolean                      $install_explorer,
  Boolean                      $install_xrserver,
  Boolean                      $install_samples,
  Boolean                      $install_sdk,
  Boolean                      $install_man,
  Boolean                      $install_gskit,
  Boolean                      $install_amqp,
  Boolean                      $install_web        = false,           # REST API and Console	
  Boolean                      $install_salesforce = false,           # IBM MQ Bridge to Salesforce
  Boolean                      $install_blockchain = false,           # IBM MQ Bridge to blockchain
  Boolean                      $install_rdqm       = false,           # replicated data queue manage
  String                       $source_location = $ibm_profile::source_location,
) inherits ibm_profile {
  echo {"MQ version ${version} software from ${source_location}":
    withpath => false,
  }
  class {'::mq_install::software':
    source_location    => $source_location,
    version            => $version,
    install_ams        => $install_ams,
    install_ft         => $install_ft,
    install_client     => $install_client,
    install_explorer   => $install_explorer,
    install_xrserver   => $install_xrserver,
    install_samples    => $install_samples,
    install_sdk        => $install_sdk,
    install_man        => $install_man,
    install_gskit      => $install_gskit,
    install_amqp       => $install_amqp,
    install_web        => $install_web,
    install_salesforce => $install_salesforce,
    install_blockchain => $install_blockchain,
    install_rdqm       => $install_rdqm,
  }
}
