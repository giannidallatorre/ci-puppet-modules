class puppet-maven-repo {

  case $operatingsystem {
    centos, Scientific: { $is_redhat = "true" }
    default: { fail("Unrecognized operating system for puppet-storm-repos.") }
  }

  file { 'apache-maven.repo':
    path   => '/etc/yum.repos.d/apache-maven.repo',
    ensure => file,
    source =>  "puppet:///modules/puppet-maven-repo/apache-maven.repo"
  }
}
