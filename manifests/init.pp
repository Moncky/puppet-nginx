class nginx (
  $version = $::nginx::version,
  $passenger = $::nginx::passenger,
  $unicorn = $::nginx::unicorn,
  ) inherits nginx::params {

  contain nginx::install
}
