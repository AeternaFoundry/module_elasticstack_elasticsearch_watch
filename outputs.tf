output "elasticsearch_watches_id" {
  description = "Map of id values across all elasticsearch_watches, keyed the same as var.elasticsearch_watches except keys with no id are omitted"
  value       = { for k, v in elasticstack_elasticsearch_watch.elasticsearch_watches : k => v.id if v.id != null && length(v.id) > 0 }
}
output "elasticsearch_watches_actions" {
  description = "Map of actions values across all elasticsearch_watches, keyed the same as var.elasticsearch_watches except keys with no actions are omitted"
  value       = { for k, v in elasticstack_elasticsearch_watch.elasticsearch_watches : k => v.actions if v.actions != null && length(v.actions) > 0 }
}
output "elasticsearch_watches_active" {
  description = "Map of active values across all elasticsearch_watches, keyed the same as var.elasticsearch_watches except keys with no active are omitted"
  value       = { for k, v in elasticstack_elasticsearch_watch.elasticsearch_watches : k => v.active if v.active != null }
}
output "elasticsearch_watches_condition" {
  description = "Map of condition values across all elasticsearch_watches, keyed the same as var.elasticsearch_watches except keys with no condition are omitted"
  value       = { for k, v in elasticstack_elasticsearch_watch.elasticsearch_watches : k => v.condition if v.condition != null && length(v.condition) > 0 }
}
output "elasticsearch_watches_elasticsearch_connection" {
  description = "Map of elasticsearch_connection values across all elasticsearch_watches, keyed the same as var.elasticsearch_watches except keys with no elasticsearch_connection are omitted"
  value       = { for k, v in elasticstack_elasticsearch_watch.elasticsearch_watches : k => v.elasticsearch_connection if v.elasticsearch_connection != null && length(v.elasticsearch_connection) > 0 }
  sensitive   = true
}
output "elasticsearch_watches_input" {
  description = "Map of input values across all elasticsearch_watches, keyed the same as var.elasticsearch_watches except keys with no input are omitted"
  value       = { for k, v in elasticstack_elasticsearch_watch.elasticsearch_watches : k => v.input if v.input != null && length(v.input) > 0 }
}
output "elasticsearch_watches_metadata" {
  description = "Map of metadata values across all elasticsearch_watches, keyed the same as var.elasticsearch_watches except keys with no metadata are omitted"
  value       = { for k, v in elasticstack_elasticsearch_watch.elasticsearch_watches : k => v.metadata if v.metadata != null && length(v.metadata) > 0 }
}
output "elasticsearch_watches_throttle_period_in_millis" {
  description = "Map of throttle_period_in_millis values across all elasticsearch_watches, keyed the same as var.elasticsearch_watches except keys with no throttle_period_in_millis are omitted"
  value       = { for k, v in elasticstack_elasticsearch_watch.elasticsearch_watches : k => v.throttle_period_in_millis if v.throttle_period_in_millis != null }
}
output "elasticsearch_watches_transform" {
  description = "Map of transform values across all elasticsearch_watches, keyed the same as var.elasticsearch_watches except keys with no transform are omitted"
  value       = { for k, v in elasticstack_elasticsearch_watch.elasticsearch_watches : k => v.transform if v.transform != null && length(v.transform) > 0 }
}
output "elasticsearch_watches_trigger" {
  description = "Map of trigger values across all elasticsearch_watches, keyed the same as var.elasticsearch_watches except keys with no trigger are omitted"
  value       = { for k, v in elasticstack_elasticsearch_watch.elasticsearch_watches : k => v.trigger if v.trigger != null && length(v.trigger) > 0 }
}
output "elasticsearch_watches_watch_id" {
  description = "Map of watch_id values across all elasticsearch_watches, keyed the same as var.elasticsearch_watches except keys with no watch_id are omitted"
  value       = { for k, v in elasticstack_elasticsearch_watch.elasticsearch_watches : k => v.watch_id if v.watch_id != null && length(v.watch_id) > 0 }
}

