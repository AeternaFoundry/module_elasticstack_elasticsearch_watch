resource "elasticstack_elasticsearch_watch" "elasticsearch_watches" {
  for_each = var.elasticsearch_watches

  trigger                   = each.value.trigger
  watch_id                  = each.value.watch_id
  actions                   = each.value.actions
  active                    = each.value.active
  condition                 = each.value.condition
  input                     = each.value.input
  metadata                  = each.value.metadata
  throttle_period_in_millis = each.value.throttle_period_in_millis
  timeouts                  = each.value.timeouts
  transform                 = each.value.transform

  dynamic "elasticsearch_connection" {
    for_each = each.value.elasticsearch_connection != null ? each.value.elasticsearch_connection : []
    content {
      api_key                  = elasticsearch_connection.value.api_key
      bearer_token             = elasticsearch_connection.value.bearer_token
      ca_data                  = elasticsearch_connection.value.ca_data
      ca_file                  = elasticsearch_connection.value.ca_file
      ca_fingerprint           = elasticsearch_connection.value.ca_fingerprint
      cert_data                = elasticsearch_connection.value.cert_data
      cert_file                = elasticsearch_connection.value.cert_file
      endpoints                = elasticsearch_connection.value.endpoints
      es_client_authentication = elasticsearch_connection.value.es_client_authentication
      headers                  = elasticsearch_connection.value.headers
      insecure                 = elasticsearch_connection.value.insecure
      key_data                 = elasticsearch_connection.value.key_data
      key_file                 = elasticsearch_connection.value.key_file
      password                 = elasticsearch_connection.value.password
      username                 = elasticsearch_connection.value.username
    }
  }
}

