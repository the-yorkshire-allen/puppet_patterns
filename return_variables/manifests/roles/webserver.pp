# @summary A short summary of the purpose of this class
#
# A description of what this class does
# @param webserver_keys
#   The keys to be used by this webserver
#
# @example
#   include return_variables::webserver
class return_variables::roles::webserver (
  Optional[String] $webserver_keys = '',
) {
  $keys = $webserver_keys # assign the parameter key name to the generic key name
}
