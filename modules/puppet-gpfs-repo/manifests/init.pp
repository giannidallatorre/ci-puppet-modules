# == Class: puppet-gpfs-repo
#
# Set up the repo for gpfs packages.
# 
# === Examples
#
#   include puppet-gpfs-repo
#


class puppet-gpfs-repo {


  file { 'gpfs-repo':
    path => '/etc/yum.repos.d/gpfs.repo',
    ensure => file,
    owner => 'root',
    source => "puppet:///modules/puppet-gpfs-repo/gpfs.repo"
  }
}

