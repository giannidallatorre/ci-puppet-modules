class puppet-emi3-release {

  include wget 

  case $operatingsystem {
    centos, Scientific: { $is_redhat = "true" }
    default: { fail("Unrecognized operating system for emi3-release") }
  }

  case $lsbmajdistrelease {
    5: { $emi3_release_package = "http://emisoft.web.cern.ch/emisoft/dist/EMI/3/sl5/x86_64/base/emi-release-3.0.0-2.el5.noarch.rpm" }
    6: { $emi3_release_package = "http://emisoft.web.cern.ch/emisoft/dist/EMI/3/sl6/x86_64/base/emi-release-3.0.0-2.el6.noarch.rpm" }
    default: { fail("Unrecognized scientific linux major version: $lsbmajdistrelease") }
  }

  Exec {
    path => "/bin:/sbin:/usr/bin:/usr/sbin"
  }

  wget::fetch { 'Download EMI release package':
    source          => $emi3_release_package,
    destination => "/tmp/emi3-release-package.rpm"
  }

  exec { 'import-emi3-gpg-key':
    command  => 'rpm --import http://emisoft.web.cern.ch/emisoft/dist/EMI/3/RPM-GPG-KEY-emi'
  }

  exec { 'emi3-package-install':
    command      => 'yum -y localinstall /tmp/emi3-release-package.rpm',
    require  => [ Exec['import-emi3-gpg-key'], Wget::Fetch['Download EMI release package'] ]
  }

  exec { 'yum clean all':
    require  => Exec['emi3-package-install']
  }

}
