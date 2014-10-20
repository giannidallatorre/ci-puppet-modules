# == Class: maven-settings
#
# Setup for maven settings configuration.
#
# === Parameters
#
#
# [*sample_parameter*]
#    Parameters are passed in as a list of hashes.
#   "id" is the id of the maven repo where artifacts must be uploaded.
#   "login" and "pwd" needed for accessing the remote server. 
#
#
# === Examples
#
#  class { 'maven-settings':
#     servers_data => [ { id => undef, login => undef, pwd => undef } ]
#   }


class puppet-jenkins-slave::maven-settings ($servers_data) {

  $maven_dir_settings="/home/jenkins/.m2"
  $maven_file_settings="$maven_dir_settings/settings.xml"

  file { 'Create maven directory':
    path   => $maven_dir_settings,
    ensure => 'directory',
    owner  => "jenkins",
    group  => "jenkins",
    mode   => 750
  }

  file { 'settings.xml':
    path   =>  $maven_file_settings,
    owner  => "jenkins",
    group  => "jenkins",
    mode   => 750,
    require => File['Create maven directory'],
    content => template("puppet-jenkins-slave/settings.xml.erb")
  }

}
