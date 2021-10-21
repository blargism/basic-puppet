class profile::base {
  service { 'puppet':
    ensure   => 'running',
    enable   => 'true',
    provider => 'systemd',
  }

  package { 'less':
    ensure => present
  }

  package { 'vim':
    ensure => present
  }

  package { 'git':
    ensure => present
  }
}
