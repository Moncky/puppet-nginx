class nginx (
  $version = $::nginx::version,
  $passenger = $::nginx::passenger,
  $unicorn = $::nginx::unicorn,
  ) inherits nginx::params {

  anchor { 'nginx::start': } ~>
  anchor { 'nginx::repo': } ~>
  anchor { 'nginx::install': } ~>
  anchor { 'nginx::config': } ~>
  anchor { 'nginx::end': }

}
