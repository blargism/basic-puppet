class profile::base {
  package { 'less':
    ensure => present
  }

  package { 'vim':
    ensure => present
  }
}
