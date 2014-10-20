class puppet-docker {

  package { 'docker-io':
    ensure  => latest 
  }

  file { "/etc/sysconfig/docker":
    ensure  => "present",
    content => 'other_args="--exec-driver=lxc"',
    require => Package['docker-io']
  }

  service { 'docker':
    ensure => running,
    require => File['/etc/sysconfig/docker']
  }
}
