# == Class: puppet-base-build-env
#
# Install the minimum build environment.
# 
# === Examples
#
#   include puppet-base-build-env

class puppet-base-build-env {

  package { 'bash':
    ensure => present
  }

  package { 'bzip2':
    ensure => present
  }

  package { 'coreutils':
    ensure => present
  }

  package { 'cpio':
    ensure => present
  }

  package { 'diffutils':
    ensure => present
  }

  package { 'findutils':
    ensure => present
  }

  package { 'gawk':
    ensure => present
  }

  package { 'gcc':
    ensure => present
  }

  package { 'gcc-c++':
    ensure => present
  }

  package { 'grep':
    ensure => present
  }

  package { 'gzip':
    ensure => present
  }

  package { 'info':
    ensure => present
  }

  package { 'make':
    ensure => present
  }

  package { 'patch':
    ensure => present
  }

  package { 'rpm-build':
    ensure => present
  }

  package { 'sed':
    ensure => present
  }

  package { 'shadow-utils':
    ensure => present
  }

  package { 'tar':
    ensure => present
  }

  package { 'unzip':
    ensure => present
  }

  package { 'which':
    ensure => present
  }

  package { 'xz':
    ensure => present
  }

  package { 'redhat-rpm-config':
    ensure => present
  }

  package { 'createrepo':
    ensure => present
  }

  $kernel_devel = ["kernel-devel", "kernel-headers"]
  package {$kernel_devel: ensure => present}
}
