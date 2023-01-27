# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @param configuration The configurations to be declared in the Component Config Module
#
# @example
#   include require_function_config
class require_function_config (
  Array $configuration = [],
) {
  $require_function_config::configurations.each |$configuration| {
    if defined(Class["require_function_config::configurations::${configuration}"]) {
      require "require_function_config::configurations::${configuration}"
    } else {
      notify("require_function_config::configurations::${configuration} does not exist")
    }
  }
}
