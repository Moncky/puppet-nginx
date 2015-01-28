class nginx::repo::debian {

  include apt

  apt::source { "nginx":
    location => "http://nginx.org/packages/debian/",
    release => "${lsbdistcodename}",
    repos => "nginx",
    key => "7BD9BF62",
    key_source => "http://nginx.org/keys/nginx_signing.key",
    incklude_src => false,

}
