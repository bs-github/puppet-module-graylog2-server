# == Class: graylog2server
#
class graylog2server
(
  $version                             = 'present',
  $enable                              = true,
  $start                               = true,
  $syslog_listen_address               = '0.0.0.0',
  $syslog_listen_port                  = '514',
  $syslog_enable_udp                   = true,
  $syslog_enable_tcp                   = false,
  $es_cluster_name                     = 'graylog2',
  $mongodb_useauth                     = false,
  $mongodb_user                        = 'graylog2user',
  $mongodb_password                    = 'redacted',
  $mongodb_host                        = '127.0.0.1',
  $mongodb_database                    = 'graylog2',
  $mongodb_port                        = '27017',
  $elasticsearch_max_docs_per_index    = '20000000',
  $elasticsearch_max_number_of_indices = '20',
)
{
  class{'graylog2server::install': } ->
  class{'graylog2server::config': } ->
  class{'graylog2server::service': } ->
  Class['graylog2server']
}
