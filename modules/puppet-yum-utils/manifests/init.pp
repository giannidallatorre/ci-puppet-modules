# == Class: puppet-yum-utils
#
# Install the yum-utils package.
# 
# === Examples
#
#   include puppet-yum-utils



class puppet-yum-utils {

  include puppet-emi3-release


  package { 'yum-utils':
    ensure => present,
    require => Class["puppet-emi3-release"]
  }


  define builddep {

    Exec {
      path => "/bin:/sbin:/usr/bin:/usr/sbin"
    }

    exec { "yum-builddep-${title}":
      command => "yum-builddep -y ${title}"
    }
  }
}

