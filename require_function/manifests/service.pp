# @summary A short summary of the purpose of this class
#
# A description of what this class does
# @param dependencies
#   An array of dependencies to require
#
# @example
#   include require_function::service
class require_function::service (
  Array[String] $dependencies = ['require_function::package'],
) {
  require dependencies # Package['docker']

  service { 'docker':
    ensure  => running,
    require => Package['docker'],
  }
}
