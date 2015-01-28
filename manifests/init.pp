class nginx {

  package { 'nginx':
    ensure => $::nginx::version;
    }

}
