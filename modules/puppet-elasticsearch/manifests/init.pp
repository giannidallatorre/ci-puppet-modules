# == Class: puppet-elasticsearchs
#
# Install the elasticsearch package.
# 
# === Examples
#   include puppet-elasticsearch
class puppet-elasticsearch {

  include puppet-elasticsearch-repo

  package { 'elasticsearch':
    ensure => present,
    require => Class["puppet-elasticsearch-repo"]
  }
}

