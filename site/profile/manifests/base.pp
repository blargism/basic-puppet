class profile::base {
  package { 'htop':
    ensure => present
  }
}
