class puppet-robot-framework {

  require puppet-python

  $pip = 'pip'

  if $lsbmajdistrelease ==  5 {
    $pip = 'pip2.6'
  }

  exec{ 'install-robotframework':
    command => "$pip install robotframework",
    path=> ['/bin','/usr/bin'],
  }
}
