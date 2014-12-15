#
# == Class: puppet-voms::setup-clients-dir
# Install voms-clients package.
# 
class puppet-voms::setup-clients-dir {

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
