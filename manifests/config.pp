class nginx::config {

  file { '/etc/nginx/nginx.conf':
    ensure => present,
    content => template('nginx/nginx.conf.erb'),
    }

  service { 'nginx':
    ensure => running,
  }

}
