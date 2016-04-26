node webserver  {
  package { 'httpd':
    ensure => latest,
  } ->
  service { 'httpd':
    ensure => running,
  }
}
