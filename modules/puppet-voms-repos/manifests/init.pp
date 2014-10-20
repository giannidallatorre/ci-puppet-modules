class puppet-voms-repos ($repo_scope = "develop") {

  include puppet-emi3-release
  include puppet-egi-trust-anchors
  include puppet-test-ca

  case $operatingsystem {
    centos, Scientific: { $is_redhat = "true" }
    default: { fail("Unrecognized operating system for puppet-voms-repos.") }
  }

  case $lsbmajdistrelease {
    5: {
      $voms_repo_file = "puppet:///modules/puppet-voms-repos/voms-${repo_scope}_sl5.repo"
      $voms_repo_file_src = "puppet:///modules/puppet-voms-repos/voms-${repo_scope}_sl5_src.repo"
    }
    6: {
      $voms_repo_file = "puppet:///modules/puppet-voms-repos/voms-${repo_scope}_sl6.repo"
      $voms_repo_file_src = "puppet:///modules/puppet-voms-repos/voms-${repo_scope}_sl6_src.repo"
    }

    default: { fail("Unrecognized scientific linux major version: $lsbmajdistrelease") }
  }

  file { 'voms-devel.repo':
    path           => '/etc/yum.repos.d/voms-devel.repo',
    ensure     => file,
    source => "${voms_repo_file}"
  }

  file { 'voms-devel_src.repo':
    path           => '/etc/yum.repos.d/voms-devel_src.repo',
    ensure     => file,
    source => "${voms_repo_file_src}"
  }
}
