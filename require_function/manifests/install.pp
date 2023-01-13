# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include require_function::install
class require_function::install {
  package { 'docker':
    ensure => 'present',
  }
}
