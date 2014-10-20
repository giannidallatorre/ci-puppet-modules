class puppet-test-vos::test_vo_2 {
  include puppet-voms

  puppet-voms::client{'test.vo.2':
    servers => [
      { server => 'vgrid02.cnaf.infn.it',
      port => '15001',
      dn => '/C=IT/O=INFN/OU=Host/L=CNAF/CN=vgrid02.cnaf.infn.it',
      ca_dn => '/C=IT/O=INFN/CN=INFN CA'
      }
    ]
  }
}
