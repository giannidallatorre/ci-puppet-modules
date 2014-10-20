class puppet-egi-trust-anchors {
  file { 'egi-trust-anchors.repo':
    path   => '/etc/yum.repos.d/egi-trust-anchors.repo',
    ensure => file,
    source => 'puppet:///modules/puppet-egi-trust-anchors/egi-trust-anchors.repo'
  }

}

