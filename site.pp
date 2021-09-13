hiera_include('classes')

node /^dave-primary\.[a-zA-Z0-9-_]+\.[a-zA-Z0-9-_]+/ {
  include role::primary
}

node /^dave-compiler\.[a-zA-Z0-9-_]+\.[a-zA-Z0-9-_]+/ {
  include role::compiler
}

node /^dave-client.*\.[a-zA-Z0-9-_]+\.[a-zA-Z0-9-_]+/ {
  include role::linux_client
}
