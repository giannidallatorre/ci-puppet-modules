class puppet-storm-repos ($repo_scope = "develop") {

  include puppet-emi3-release
  include puppet-egi-trust-anchors
  include puppet-test-ca

  case $operatingsystem {
    centos, Scientific: { $is_redhat = "true" }
    default: { fail("Unrecognized operating system for puppet-storm-repos.") }
  }

  case $lsbmajdistrelease {
    5: {
      $storm_repo_file = "puppet:///modules/puppet-storm-repos/storm_${repo_scope}_sl5.repo"
      $storm_repo_file_src = "puppet:///modules/puppet-storm-repos/storm_${repo_scope}_sl5_src.repo"
    }
    6: {
      $storm_repo_file = "puppet:///modules/puppet-storm-repos/storm_${repo_scope}_sl6.repo"
      $storm_repo_file_src = "puppet:///modules/puppet-storm-repos/storm_${repo_scope}_sl6_src.repo"
    }

    default: { fail("Unrecognized scientific linux major version: $lsbmajdistrelease") }
  }

  file { 'storm-devel.repo':
    path           => '/etc/yum.repos.d/storm-devel.repo',
    ensure     => file,
    source => "${storm_repo_file}"
  }

  file { 'storm-devel_src.repo':
    path           => '/etc/yum.repos.d/storm-devel_src.repo',
    ensure     => file,
    source => "${storm_repo_file_src}"
  }
}
