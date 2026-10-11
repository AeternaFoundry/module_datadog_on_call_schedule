variable "on_call_schedules" {
  description = <<EOT
Map of on_call_schedules, attributes below
Required:
    - name
    - time_zone
Optional:
    - teams
    - layer (block):
        - effective_date (required)
        - end_date (optional)
        - interval (optional, block):
            - days (optional)
            - seconds (optional)
        - name (required)
        - restriction (optional, block):
            - end_day (required)
            - end_time (required)
            - start_day (required)
            - start_time (required)
        - rotation_start (required)
        - time_zone (optional)
        - users (required)
EOT

  type = map(object({
    name      = string
    time_zone = string
    teams     = optional(list(string))
    layer = optional(list(object({
      effective_date = string
      end_date       = optional(string)
      interval = optional(list(object({
        days    = optional(number)
        seconds = optional(number)
      })))
      name = string
      restriction = optional(list(object({
        end_day    = string
        end_time   = string
        start_day  = string
        start_time = string
      })))
      rotation_start = string
      time_zone      = optional(string)
      users          = list(string)
    })))
  }))
}

