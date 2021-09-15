class profile::r10k_webhook {
  include epel

  class { '::redis':
    bind => '127.0.0.1',
  }

  class { 'puppetwebhook':
    protected => true,
    user      => 'puppet',
    pass      => '28JXlsweZ0UI',
  }
}
