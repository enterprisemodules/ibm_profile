#
# ibm_profile::em_license
#
# @summary This class will deploy the Enterprise Modules license.
#
#
#
# See the file "LICENSE" for the full license governing this code.
#
class ibm_profile::em_license {
  contain easy_type::license::activate
}
