class puppet-storm::test-clients {
	
	include puppet-test-ca
	include puppet-test-vos
	
	Package {
		ensure => "latest"
	}

	$packages = [
		"java-1.6.0-openjdk", 
		"openldap-clients", 
		"globus-gass-copy-progs",
		"emi-storm-srm-client-mp",
		"lcg-util",
		"dcache-srmclient",
		"git" ]
	
	package{ $packages: 
		require => [Class['puppet-test-ca'], Class['puppet-test-vos'], Class['puppet-emi3-release']]
	}
}
