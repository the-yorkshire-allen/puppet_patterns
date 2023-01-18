# @summary A short summary of the purpose of this class
#
# A description of what this class does
# @param
#   dependencies - An array of dependencies to require
#
# @example
#   include require_function::service
class require_function::service (
  Array[String] $dependencies = ['require_function::setup'],
) {
  require dependencies

  service { 'docker':
    ensure => running,
  }
}
