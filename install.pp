$szArchiverUserName=hiera(ArchiverUserName, 'archiver')
#$szArchiverUserID=hiera(ArchiverUserID)
$szArchiverHomeDirectory=hiera(ArchiverHomeDirectory, '/var/lib/archiver')


user { "$szArchiverUserName":
  ensure => present,
  home   => "$szArchiverHomeDirectory",
  managehome => true,
}

package { 'ssh': ensure => present }
