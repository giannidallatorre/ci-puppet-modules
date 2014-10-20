class puppet-python {

  Exec {
    path => ['/bin', '/usr/bin']
  }

  $python_packages = ["python", "python-setuptools"]
  $easy_install = "easy_install"
  $pip = "pip"

  if (lsbmajdistrelease == 5) {
    ## Install python26 on CentOS/SL 5
    $python_packages = ["python26", "python26-distribute"]
    $easy_install = "easy_install-2.6"
    $pip = "pip2.6"
  }

  package { $python_packages: ensure => present }

  exec { 'install-pip':
    command => "$easy_install pip",
    require => Package[$python_packages]
  }

}
