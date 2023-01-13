# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include require_function::service
class require_function::service {
  require require_function::setup

  service { 'docker':
    ensure => running,
  }
}
