class nginx (
  $version = $::nginx::version,
  $passenger = $::nginx::passenger,
  ) inherits nginx::params {

  package { 'nginx':
    ensure => $version;
    }

  service { 'nginx':
    ensure => running,
    }

  file { '/etc/nginx/nginx.conf':
    ensure => present,
    content => template('nginx/nginx.conf.erb'),
    }

  if $passenger == true {
    notify { "Passenger is True": }
  }
}
