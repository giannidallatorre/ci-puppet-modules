class puppet-test-vos::test_vo {
  include puppet-voms

  puppet-voms::client{'test.vo':
    servers => [
      { server => 'vgrid02.cnaf.infn.it',
      port => '15000',
      dn => '/C=IT/O=INFN/OU=Host/L=CNAF/CN=vgrid02.cnaf.infn.it',
      ca_dn => '/C=IT/O=INFN/CN=INFN CA'
      }
    ]
  }
}
