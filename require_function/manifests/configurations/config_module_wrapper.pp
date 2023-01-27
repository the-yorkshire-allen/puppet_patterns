# @summary A short summary of the purpose of this class
#
# A description of what this class does
# @param dependencies A list of dependencies to require
#
# @example
#   include require_function::configurations::config_module_wrapper
class require_function::configurations::config_module_wrapper (
  Array $dependencies = ['require_function::install', 'require_function::service'],
) {
  # code sequence required by any class implementing configurations for this component module
  require $dependencies
}
