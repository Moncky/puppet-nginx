class nginx::repo::debian {

  include apt

  apt::source { "nginx":
    location     => "http://nginx.org/packages/debian/",
    release      => "${lsbdistcodename}",
    repos        => "nginx",
    key          => "7BD9BF62",
    key_source   => "http://nginx.org/keys/nginx_signing.key",
    include_src => false,
  }

  apt::source { "passenger":
    location => "https://oss-binaries.phusionpassenger.com/apt/passenger/",
    release => "${lsbdistcodename}",
    repos => "main",
    key => '561F9B9CAC40B2F7',
    key_server => 'keyserver.ubuntu.com',
  }

}
