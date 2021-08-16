#
# ibm_profile::mq_machine::software
#
# @summary This class allows you to setup your IIB software on your system.
# Specify the version and the location where to find the software kit.
#
# @param [Pattern[/\d+\.\d+\.\d+\.\d/]] version
#    The version of MQ to install.
#
# @param [String] source_location
#    The url or directory where to find the IIB installation tar.
#    gz file. You can use
#    either a file, a http url or a puppet url.
#
#
# See the file "LICENSE" for the full license governing this code.
#
class ibm_profile::mq_machine::software(
  Pattern[/\d+\.\d+\.\d+\.\d/] $version,
  Boolean                      $install_ams,         # Install AMS packages
  Boolean                      $install_ft,          # Install FT packages
  Boolean                      $install_client,      # Install Client packages
  Boolean                      $install_explorer,    # Install Explorer packages
  Boolean                      $install_xrserver,    # Install XRServer packages
  Boolean                      $install_samples,     # Install Samples packages
  Boolean                      $install_sdk,         # Install SDK packages
  Boolean                      $install_man,         # Install man packages
  Boolean                      $install_gskit,       # Install GSKit packages
  Boolean                      $install_amqp,        # Install AMQP packages
  Boolean                      $install_web,         # REST API and Console
  Boolean                      $install_salesforce,  # IBM MQ Bridge to Salesforce
  Boolean                      $install_blockchain,  # IBM MQ Bridge to blockchain
  Boolean                      $install_rdqm,        # replicated data queue manage
  Boolean                      $install_toolkit,     # Install Development Toolkit packages
  String                       $source_location      = $ibm_profile::source_location,
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
    install_toolkit    => $install_toolkit,
  }
  contain ::mq_install::software
}
