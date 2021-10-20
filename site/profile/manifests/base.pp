class profile::base {
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
