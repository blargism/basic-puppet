hiera_include('classes')

node dave-client.coalescent.technology {
  include role::linux_client
}

node /^dave-client.*\.[a-zA-Z0-9\-_]+]+$/ {
  include role::linux_client
}

node /^dave-client2.*\.[a-zA-Z0-9\-_]+]+$/ {
  include role::linux_client
}
