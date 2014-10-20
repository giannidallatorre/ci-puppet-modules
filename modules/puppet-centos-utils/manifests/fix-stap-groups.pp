class puppet-centos-utils::fix-stap-groups{

	group { 'stapusr':
		gid => 6156
	}	

	group { 'stapsys': 
		gid => 6157
	}

	group { 'stapdev':
		gid => 6158
	}
}
