class puppet-openstack-havana-repo {

  case $operatingsystem {
    centos, Scientific: { $is_redhat = "true" }
    default: { fail("Unrecognized operating system for puppet-storm-repos.") }
  }

  case $lsbmajdistrelease {
    6: { $is_redhat_6 = "true" }
    default: { fail("Unrecognized scientific linux major version: $lsbmajdistrelease") }
  }

  file { 'epel-openstack-havana.repo':
    path   => '/etc/yum.repos.d/epel-openstack-havana.repo',
    ensure => file,
    source =>  "puppet:///modules/puppet-openstack-havana-repo/epel-openstack-havana.repo"
  }
}
