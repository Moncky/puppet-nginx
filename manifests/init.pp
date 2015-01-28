class nginx (
  $version = $::nginx::version,
  $passenger = false,
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

}
