class puppet-gpfs {

  require puppet-gpfs-repo
  require puppet-base-build-env

  $gpfs_packages= ["gpfs.base", "gpfs.docs", "gpfs.gpl", "gpfs.msg.en_US"]

  package{ $gpfs_packages:
    ensure  => latest,
  }

  file{'/etc/profile.d/gpfs_env.sh':
    content     => 'export PATH=$PATH:/usr/lpp/mmfs/bin/',
    require => Package['gpfs.base']
  }
}
