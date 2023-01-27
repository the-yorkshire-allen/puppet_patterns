# @summary A short summary of the purpose of this class
#
# A description of what this class does
# @param dependencies A list of dependencies for this configuration
#
# @example
#   include require_function_config::configurations::my_config
class require_function_config::configurations::my_config (
  Array $dependencies = ['require_function::install', 'require_function::service'],
) {
  # direct implementation of the require_function module
  require $dependencies

  # My configuration for the require_function module
}
