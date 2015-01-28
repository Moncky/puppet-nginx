class nginx inherits nginx::params {

  package { 'nginx':
    ensure => $::nginx::version;
    }

  service { 'nginx':
    ensure => running,
    }

  file { '/etc/nginx/nginx.conf':
    ensure => present,
    content => template('nginx/nginx.conf.erb'),
    }

}
