# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include dynamic_class_declaration
class dynamic_class_declaration {
  # check to see if the class exists before trying to require it
  if defined(Class["dynamic_class_declaration::roles::${trusted['extensions']['pp_role']}"]) {
    require "dynamic_class_declaration::roles::${trusted['extensions']['pp_role']}"
  } else {
    notify("Role ${trusted['extensions']['pp_role']} is not supported by dynamic_class_declaration")
  }
}
