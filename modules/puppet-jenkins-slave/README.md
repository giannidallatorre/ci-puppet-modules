puppet-jenkins-slave
====================

A puppet module to configure a jenkins slave node

## Usage

```
include puppet-jenkins-slave

or:

class { 'puppet-jenkins-slave':
        maven_servers_data => [ { id => 'server1', login => 'login1', pwd => 'pwd1' } ]
}

```

## Required puppet modules

https://github.com/cnaf/puppet-emi3-release  
https://forge.puppetlabs.com/puppetlabs/java
