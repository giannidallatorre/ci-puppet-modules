# == Class: puppet-voms-build-deps
#
# Install building dependencies for all VOMS packages.
# 
# === Examples
#
#   include puppet-voms-build-deps



class puppet-voms-build-deps {

  include puppet-base-build-env
  require puppet-yum-utils
  require puppet-voms-repos
  require puppet-oracle-repo


  $packages = ['voms', 'voms-admin-server', 'voms-admin-client', 'voms-oracle-plugin', 'voms-mysql-plugin', 'voms-clients3', 'voms-api-java3']

  puppet-yum-utils::builddep { $packages: }
}

