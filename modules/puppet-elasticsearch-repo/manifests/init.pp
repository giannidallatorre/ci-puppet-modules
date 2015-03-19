# == Class: puppet-elasticsearchs-repo
#
# Install the elasticsearch repository.
# 
# === Examples
#   include puppet-elasticsearch-repo
class puppet-elasticsearch-repo {

  case $operatingsystem {
    centos, Scientific: { $is_redhat = "true" }
    default: { fail("Unrecognized operating system for puppet-elasticsearch-repos.") }
  }

  file { 'elasticsearch-repo':
    path   => '/etc/yum.repos.d/elasticsearch.repo',
    ensure => file,
    owner => 'root',
    source =>  "puppet:///modules/puppet-elasticsearch-repo/elasticsearch.repo"
  }  
}
