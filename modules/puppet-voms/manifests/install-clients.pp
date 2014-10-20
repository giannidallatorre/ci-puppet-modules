#
# == Class: puppet-voms::install-clients
# Install voms-clients package and sets up a few directories.
# 
class puppet-voms::install-clients {

  require puppet-emi3-release
  require puppet-egi-trust-anchors


  file{'/etc/grid-security/vomsdir':
    ensure  => directory,
    owner   => root,
    group   => root,
    mode    => 0755,
    purge   => true,
    recurse => true
  }

  file{'/etc/vomses':
    ensure  => directory,
    owner   => root,
    group   => root,
    mode    => 0755,
    purge   => true,
    recurse => true
  }

}
