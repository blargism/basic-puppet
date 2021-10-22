class profile::base {
  service { 'puppet':
    ensure   => 'running',
    enable   => 'true',
    provider => 'systemd',
  }
}
