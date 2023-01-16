# @summary A short summary of the purpose of this class
#
# A description of what this class does
# @param role
#   The role that is gonig to be declared and contains the keys to implement
#
# @example
#   include return_variables
class return_variables (
  Optional[String] $role = undef,
) {
  # default my_role to webserver if no role is passed in
  $my_role = $role ? {
    undef   => 'webserver',
    default => $role,
  }

  # check to see if the class exists before trying to require it
  if defined(Class["return_variables::roles::${my_role}"]) {
    require "return_variables::roles::${my_role}"
    $keys = getvar("return_variables::roles::${my_role}::keys")  # pull the varaible from the class

    file { "/etc/${my_role}":
      ensure  => file,
      content => $keys,
    }
  } else {
    notify("Role ${my_role} is not supported by return_variables")
  }
}
