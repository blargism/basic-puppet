hiera_include('classes')

node 'dave-client.coalescent.technology' {
  include role::linuxclient
}

node /^dave-client.*\.[a-zA-Z0-9\-_]+]+$/ {
  include role::linuxclient
}

node /^dave-client2.*\.[a-zA-Z0-9\-_]+]+$/ {
  include role::linuxclient
}
