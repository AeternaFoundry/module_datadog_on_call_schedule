output "on_call_schedules_id" {
  description = "Map of id values across all on_call_schedules, keyed the same as var.on_call_schedules except keys with no id are omitted"
  value       = { for k, v in datadog_on_call_schedule.on_call_schedules : k => v.id if v.id != null && length(v.id) > 0 }
}
output "on_call_schedules_layer" {
  description = "Map of layer values across all on_call_schedules, keyed the same as var.on_call_schedules except keys with no layer are omitted"
  value       = { for k, v in datadog_on_call_schedule.on_call_schedules : k => v.layer if v.layer != null && length(v.layer) > 0 }
}
output "on_call_schedules_name" {
  description = "Map of name values across all on_call_schedules, keyed the same as var.on_call_schedules except keys with no name are omitted"
  value       = { for k, v in datadog_on_call_schedule.on_call_schedules : k => v.name if v.name != null && length(v.name) > 0 }
}
output "on_call_schedules_teams" {
  description = "Map of teams values across all on_call_schedules, keyed the same as var.on_call_schedules except keys with no teams are omitted"
  value       = { for k, v in datadog_on_call_schedule.on_call_schedules : k => v.teams if v.teams != null && length(v.teams) > 0 }
}
output "on_call_schedules_time_zone" {
  description = "Map of time_zone values across all on_call_schedules, keyed the same as var.on_call_schedules except keys with no time_zone are omitted"
  value       = { for k, v in datadog_on_call_schedule.on_call_schedules : k => v.time_zone if v.time_zone != null && length(v.time_zone) > 0 }
}

