# == Class: puppet-oracle-repo
#
# Set up the repo for oracle packages.
# 
# === Examples
#
#   include puppet-oracle-repo
#


class puppet-oracle-repo {


  file { 'oracle-repo':
    path => '/etc/yum.repos.d/oracle.repo',
    ensure => file,
    owner => 'root',
    content => template("puppet-oracle-repo/oracle.repo.erb")
  }
}

