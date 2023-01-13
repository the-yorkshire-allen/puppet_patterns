# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include require_function::setup
class require_function::setup {
  require require_function::install

  # Add configuration file
  file { '/etc/require_function.conf':
    ensure  => file,
    content => epp('require_function/require_function.conf.epp', { 'maintained_by' => $require_function::maintained_by }),
    owner   => 'root',
    group   => 'root',
    notify  => Service['docker'],
  }
}
