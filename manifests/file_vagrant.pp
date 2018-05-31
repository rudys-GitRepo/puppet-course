
file { '/tmp/vagrant.txt':
  ensure => file,
  owner  => 'vagrant',
  mode  => '777',
  content => "hello, Ruud\n",
}
