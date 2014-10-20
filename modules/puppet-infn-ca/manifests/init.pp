class puppet-infn-ca {

  include puppet-egi-trust-anchors

  package { 'ca_INFN-CA-2006':
    ensure  => latest,
    require => Class['puppet-egi-trust-anchors']
  }

}
