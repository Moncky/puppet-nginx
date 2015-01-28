class nginx {

  package { 'nginx':
    ensure => $::nginx::version;
    }

  service { 'nginx':
    ensure => running,
    }

}
