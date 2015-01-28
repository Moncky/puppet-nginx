class nginx::repo {

  case $::osfamily {
    'Debian':
      class { 'nginx::repo::debian': }
  }
}
