class puppet-docker {

  case $operatingsystem {
    centos, Scientific: { $is_redhat = "true" }
    default: { fail("Unrecognized operating system for puppet-docker module.") }
  }
  
  case $lsbmajdistrelease {
    5: { warning("docker is not available on centos/SL 5!")}
    6: { 
  
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
  }
}
