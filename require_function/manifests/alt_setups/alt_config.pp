# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @param dependencies
#   An array of dependencies to be required
#
# @example
#   include require_function::alt_setups::alt_config
class require_function::alt_setups::alt_config (
  Array $dependencies = ['require_function::install', 'require_function::service'],
) {
  require $dependencies

  # Add configuration file
  file { '/etc/require_function.conf':
    ensure  => file,
    content => epp('require_function/require_function_alt.conf.epp', { 'maintained_by' => $require_function::maintained_by }),
    owner   => 'root',
    group   => 'root',
    notify  => Service['docker'],
    require => Package['docker'],
  }

  # Add warning file
  file { '/etc/require_function.conf.readme':
    ensure  => file,
    content => epp('require_function/require_function_alt.conf.readme.epp', { 'maintained_by' => $require_function::maintained_by }),
    owner   => 'root',
    group   => 'root',
    notify  => Service['docker'],
    require => Package['docker'],
  }
}
