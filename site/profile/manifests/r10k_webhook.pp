class profile::r10k_webhook {
  include epel

  class { '::redis':
    bind => '127.0.0.1',
  }
  include puppetwebhook
}
