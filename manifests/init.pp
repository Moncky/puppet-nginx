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
    package { 'apt-transport-https':
      ensure => present,
    }

    notify { "Passenger is True": }
  }
}
