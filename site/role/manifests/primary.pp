class role::primary {
  include profile::base
  include profile::r10k_webhook
  include profile::r10k_config
}
