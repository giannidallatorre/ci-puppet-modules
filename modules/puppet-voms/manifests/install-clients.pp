#
# == Class: puppet-voms::install-clients
# Install voms-clients package.
# 
class puppet-voms::install-clients {

  require puppet-test-vos

  package { "install-voms-clients3": 
    name  => 'voms-clients3',
    ensure  => latest, 
    require => Class["puppet-emi3-release"]
  }

}
