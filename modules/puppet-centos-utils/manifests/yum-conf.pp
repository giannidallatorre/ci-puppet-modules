class puppet-centos-utils::yum-conf{
  file { 'yum.conf':
    path => "/etc/yum.conf",
		owner => root,
		group => root,
		mode => 0644,
    ensure => file,
		source => "puppet:///modules/puppet-centos-utils/yum.conf",
  }
}
