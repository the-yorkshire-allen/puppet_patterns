# @summary A short summary of the purpose of this class
#
# A description of what this class does
# @param components Things that we are going to include in this module
# @param maintained_by Who is maintaining this module
#
# @example
#   include require_function
class require_function (
  Array[String] $components = ['install', 'setup', 'service', 'monitor', 'control'],
  String $maintained_by = 'Chris Allen - PSE',
) {
  $include_components = $components.map | String $component | {
    "require_function::${component}"
  }

  include $include_components
}
