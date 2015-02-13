class nginx::install inherits nginx {

  if $passenger == true {
    $packages = ['nginx-extras', 'apt-transport-https', 'passenger']
  }
  else {
    $packages = 'nginx'
  }

  package { $packages:
    ensure => $version;
    }

  if $unicorn == true {
    package { 'unicorn':
      ensure => installed,
    }
  }

}
