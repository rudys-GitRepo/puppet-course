group { 'oinstall':
  ensure  => present,
  gid     => 54321,
}

group { 'dba':
  ensure  => present,
  gid     => 54322,
}

user { 'oracle':
  ensure  => present,
  uid     => 801,
  gid     => 54321,
  home    => '/home/oracle',
  shell   => '/bin/sh',
  groups  => ['oinstall', 'dba'],
  require => Group['oinstall']
}

