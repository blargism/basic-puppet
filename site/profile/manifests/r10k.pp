class profile::r10k {
  package { 'git':
    ensure => installed,
  }

  sshkey { 'github.com':
    ensure => present,
    type   => 'ssh-rsa',
    target => '/root/.ssh/known_hosts',
    key    => 'AAAAB3NzaC1yc2EAAAABIwAAAQEAq2A7hRGmdnm9tUDbO9IDSwBK6TbQa+PXYPCPy6rbTrTtw7PHkccKrpp0yVhp5HdEIcKr6pLlVDBfOLX9QUsyCOV0wzfjIJNlGEYsdlLJizHhbn2mUjvSAHQqZETYP81eFzLQNnPHt4EVVUh7VfDESU84KezmD5QlWpXLmvU31/yMf+Se8xhHTvKSCZIFImWwoG6mbUoWf9nzpIoaSjB+weqqUUmpaaasXVal72J+UX2B+2RPW3RcT0eOzQgqlJL3RKrTJvdsjE3JEAvGq3lGHSZXy28G3skua2SmVi/w4yCE6gbODqnTWlg7+wC604ydGXA8VJiS5ap43JXiUFFAaQ=='
  }

  git_deploy_key { 'add_deploy_key_to_puppet_control':
    ensure       => present,
    name         => $::fqdn,
    path         => '/root/.ssh/id_rsa.pub',
    token        => heira('github_api_token'),
    project_name => ''
  }

  class { 'r10k':
    remote  => 'ssh://git@github.com/blargism/basic-puppet.git',
  }
}
