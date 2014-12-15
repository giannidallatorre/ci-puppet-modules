class puppet-users{

  User {
    managehome => true
  }

  user { 'dmichelotto':
    name => 'dmichelotto',
         ensure     => 'present',
         groups     => ['wheel']
  }

  user { 'vianello':
    name => 'vianello',
         ensure     => 'present',
         groups     => ['wheel']
  }

  user { 'andreotti':
    name => 'andreotti',
         ensure => 'present',
         groups => ['wheel']
  }

  user { 'dallatorre':
    name => 'dallatorre',
         ensure => 'present',
         groups => ['wheel']
  }

  user { 'giaco':
    name   => 'giaco',
           ensure => 'present',
           groups => ['wheel']
  }

  user { 'ceccanti':
    name => 'ceccanti',
         ensure => 'present',
         groups => ['wheel']
  }
  
  user { 'ronchieri':
    name => 'ronchieri',
         ensure => 'present',
         groups => ['wheel']
  }

  ssh_authorized_key { 'ronchieri-key':
    ensure => 'present',
           user => 'ronchieri',
           key => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQC4rkZbaivbN1f/X3JW75ASh4xd4ZuUy3Q8FCQlqRYc8g/CTSCCqoFTAOVUHWsdV/HmnGVf0YbweZNGgFXEEE7C7TF2gxfvcRFouEEcUnV7woyp6Ik/AWRqbXDO7jgqJjDDea8UysPe43cPkQHNbJY5Uw+qKWKQwrhb0nGcC8BLBdDrYh4ZTnpDJCx5qJGOv2nTd9fK45cqrDJyYUltqu6u2pGryh5nSDVgXtpdYe6DkUaQZAeYW9JE5Oo0FAwWaybjDACNsHv6POoKloKqVKn4IFZVxl0U2ogGXA4GTZ/DZC6hTCex7lLZh7rX6Tkti5ySOJkkdLEo+cH6ZdvpZZiF',
           type => 'ssh-rsa',
           require => User['ronchieri']
  }

  ssh_authorized_key { 'ceccanti-key':
    ensure => 'present',
           user => 'ceccanti',
           key => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDAjeLbypc7mmllwLgeVTh85s42ctrt4NhIyoW2oyyMkfGA+7LxDCoui0ttXIl06ATA7vDnuMpuQpPtW6V+4K7Mb65mQOOcy+aooQhLSdxhRNxiYmcJ80SK2lded0HiJUPi8H0iVF5ZiYh3ZYargI38Q182nAgcqPIFEmCgJ+h74d/BpE8LgfoB2fGHznShPjECrrDqruwnzjVljVKVK1PRSyfxoDLKT+ha26IDVTp3BimXOA/Iq53U0EPYP4n8S8EZfdVCdvH0vjZqASD1kBVXuoi50A/ls748bO4dADPXVmahsF+AeJzV6cnah9/6thSLa04v+z0fJ4kD/1g12uP1',
           type => 'ssh-rsa',
           require => User['ceccanti']
  }

  ssh_authorized_key { 'vianello-key':
    ensure => 'present',
           user => 'vianello',
           key => 'AAAAB3NzaC1yc2EAAAABIwAAAQEA4VwLVmY3XeMpmK0RvzxZ8gMYQmsxT0qZ+9rFv+41YT8hV/P3YixDAiNJf7/RThGY3d8mGFqFXueAHQU5nTnNPZu3j2/FsL+qk3hPwGkaQcG3+nV2aDh3MfduTdYOobu6mWquwcxlY/uinEd8uXwPOqWOlmU+y+tXvzUf0vPLuT2ks+5eety0+oOqty4/gAanIPYHC9u3PQaK1CkNdot2AEJBh17j4kU/qDMj+wOMDMrInUSFUCQE/0JT76490uB70zmAJc2tewKoKIHwsAzwRJiHraM9XNMNDqugRIIWzJa/nBvs9od0mwyKGQ6u/3hs7ntn5oufngk0skT9M1nECQ==',
           type => 'ssh-rsa',
           require => User['vianello']
  }

  ssh_authorized_key { 'andreotti-key':
    ensure => 'present',
           user => 'andreotti',
           key => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQC7AUrFaHH7YEy1wfRed8VXnSXYeAcjmdP0h107Tt0rfpyCXAoPKl/TU3MydXqxVpUZUqIKV7cQINZCcJ3+JRTSiDyHzBbQSdvSEqYbyiDkYyHtMs/F8aL3drMmbruQFf+rC6qH46S1fCHrXlrByhwL0vcC0M4TLPbSoxOlpzDzn1qdl20VJzCo5RBb8RaKVS0sM8+xs6VKTnILYqwvFKV0uONafhWoM5qTksQsvfZRrTgwAY3HX25VdBMV6tiFwkKsyRHswOFLYhBIIpjml1kUcWlUKWqJjf9OFriFsNm9La3cfSTYWtUb/CmX/BsRI+nUUlTwdfkS2n3yAmOhCNQx',
           type => 'ssh-rsa',
           require => User['andreotti']
  }

  ssh_authorized_key { 'dallatorre-key':
    ensure => 'present',
           user => 'dallatorre',
           key => 'AAAAB3NzaC1kc3MAAACBALP3Xp+9FgbFyg6BPjXwZmvjnRnuxgCKEtl0q8yfQYS2MP7czWFhsPvRwbv6GyHKg01p+E+diP4FSbu/DWeGJKMp5GPLp65v+ElApiDfGvYrUmxjvCQpj19l2I+GyRptx1ELDDojXMxN6tye2Nyfg40Xo2sZ0VBjmR3L+pwlZ0KHAAAAFQC7fZBIObRInGoOKegAdzUUmiKpHQAAAIEAiyOS8WK8pF1dLVxz7bkEqFTIriLrjW/0pR16trCVM8ubVt/3jfvdtE3mur6qcnAcmNwwTalD9AdYRx21ZrdYrsiOKk13QBL+M2T7WYJPM0NNorUJBd9u8nKNYQS+VHTIFo0iKCdqunCM9NNbnonawn/jKwgDEDDcMC+/lfg/qDsAAACAEAaPY+6z5/eHlnEgJywFsf1ReWcypLWJaCRnyO8Gj628XUO0VWKV8dGsNyvePrhDYcceX+u66J2SND6NbECUx8yM4DrnsWz+LcIOyeluR1U0K71RGC2x7KTpa2ci3nztpVSEFqDylAzxrfb0FgVPajQueczVJI2rRib5DVaRjGY=',
           type => 'ssh-dss',
           require => User['dallatorre']
  }

  ssh_authorized_key { 'giaco-key':
    ensure => 'present',
           user => 'giaco',
           key => 'AAAAB3NzaC1kc3MAAACBAMnPKRJofIE4AuNRcEV5vauHv/+b8ANhyx7Yk4T3BdDDrVnvQUlACiPWqKTAZIdAsLY1Lx4lhrV+n1kkLoeicNM0UU1PaeKGVPYwQrNNqwvAkW0NqZsY3ZkZdXfjCoeFtAtV6wAmnjOZNjH8i2Eul/obY16Va6pS97SV8yID8P6vAAAAFQDW+E+FaOT5R+ixMrzmMxMm+THT8QAAAIEAk/C7dtkLPwQBiMm/NFaNpQ4XFfdxieFIURihGuLae1h7DV6Wl77TQRR9nYqrARxJVlvI+cfoEYia2/yh+Z4u0pzNXs+2V/JyZ4lMzMjIbAXrjEaoNcWqhpE8yOTI4t1gLX76L/tHNlN4i3nv0bENbhBJ4bfsV60txhW4GpN/yPsAAACABEf4um/w4/me4V5QemJVviLxovUvfbd5+uSwLhnB8iyklpcnJuIthzk+ZYMmDA53u7/+NstirghdW6feGXYL5Ef9uqdmsMYocoUZAxBtMBgfEh5FSPtK8cnWFi5aWmBwNS9JoWi6k57TrJh8RmmCVxK5V+9JBplG1DnWGKu7ZuI=',
           type => 'ssh-dss',
           require => User['giaco']
  }

  ssh_authorized_key { 'dmichelotto-key':
    ensure => 'present',
           user => 'dmichelotto',
           key => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCmrIgitzjN9NZCFqJiSipzNduBAf5Vw/hgeEaVZbLwZRy3jIhd6mCDUKIcz0OlCzng3UN847u2yo4Gk9xT70i7lQ0PiIyFW/D32T53gDWpNvGSyR6GSlx58k9RnXobEtHgpW3nDX9CNjKz2cw0ooBIpudxCrP4RFcwcfZa0vn5gRDlb/Rm8RorUJXMUQlJKkMct1Neta/iBKGnL/IDj+5GSois6tCxaTVtKfgjfxCigFnITxaSkrgBnKqBB6wkpPI0egbbWlYXcNiH2v7XDJXXsATuGazF3LWsGTiPz+CuY1wSWwM2YQzIMafpyQ4y6qlREMa8v7WV9OUefmS4P0Vj',
           type => 'ssh-rsa',
           require => User['dmichelotto']
  }

  exec { 'enable-wheel-sudoers':
    command => "/bin/sed -i 's,#\s%wheel.*NOPASSWD: ALL,%wheel\t\tALL=(ALL)\tNOPASSWD: ALL,g' /etc/sudoers"
  }
}
