class profile::r10k_config {
  include r10k::mcollective

  package { 'git':
    ensure => installed,
  }

  sshkey { 'github.com':
    ensure => present,
    type   => 'ssh-rsa',
    target => '/root/.ssh/known_hosts',
    key    => 'AAAAB3NzaC1yc2EAAAABIwAAAQEAq2A7hRGmdnm9tUDbO9IDSwBK6TbQa+PXYPCPy6rbTrTtw7PHkccKrpp0yVhp5HdEIcKr6pLlVDBfOLX9QUsyCOV0wzfjIJNlGEYsdlLJizHhbn2mUjvSAHQqZETYP81eFzLQNnPHt4EVVUh7VfDESU84KezmD5QlWpXLmvU31/yMf+Se8xhHTvKSCZIFImWwoG6mbUoWf9nzpIoaSjB+weqqUUmpaaasXVal72J+UX2B+2RPW3RcT0eOzQgqlJL3RKrTJvdsjE3JEAvGq3lGHSZXy28G3skua2SmVi/w4yCE6gbODqnTWlg7+wC604ydGXA8VJiS5ap43JXiUFFAaQ=='
  }

  class { 'r10k::webhook::config':
    enable_ssl => true,
    protected  => true,
    notify     => Service['puppetwebhook'],
  }

  class { 'r10k::webhook':
    require => Class['r10k::webhook::config'],
  }

  class { 'r10k':
    remote  => 'ssh://git@github.com/blargism/basic-puppet.git',
  }
}
