class nginx (
  $version = $::nginx::version,
  $passenger = $::nginx::passenger,
  ) inherits nginx::params {

  if $passenger == true {
    $packages = ['nginx-extras', 'apt-transport-https', 'passenger']
  }
  else {
    $packages = 'nginx'
  }

  package { $packages:
    ensure => $version;
    }

  file { '/etc/nginx/nginx.conf':
    ensure => present,
    content => template('nginx/nginx.conf.erb'),
    }

  service { 'nginx':
    ensure => running,
  }
}
