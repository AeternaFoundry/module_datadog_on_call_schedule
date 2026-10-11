resource "datadog_on_call_schedule" "on_call_schedules" {
  for_each = var.on_call_schedules

  name      = each.value.name
  time_zone = each.value.time_zone
  teams     = each.value.teams

  dynamic "layer" {
    for_each = each.value.layer != null ? each.value.layer : []
    content {
      effective_date = layer.value.effective_date
      end_date       = layer.value.end_date
      dynamic "interval" {
        for_each = layer.value.interval != null ? layer.value.interval : []
        content {
          days    = interval.value.days
          seconds = interval.value.seconds
        }
      }
      name = layer.value.name
      dynamic "restriction" {
        for_each = layer.value.restriction != null ? layer.value.restriction : []
        content {
          end_day    = restriction.value.end_day
          end_time   = restriction.value.end_time
          start_day  = restriction.value.start_day
          start_time = restriction.value.start_time
        }
      }
      rotation_start = layer.value.rotation_start
      time_zone      = layer.value.time_zone
      users          = layer.value.users
    }
  }
}

