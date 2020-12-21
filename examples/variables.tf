variable alarms {
  description = "Map alarms"
  type        = any
  default = {
    warning = {
      evaluation_periods  = 2,
      comparison_operator = "GreaterThanThreshold",
      statistic           = "Sum",
      namespace           = "AWS/Lambda",
      alarm_description   = "WARNING"
      dimensions = {
        FunctionName = "test"
        Resource     = "test"
      },
    },
    critical = {
      evaluation_periods  = 2,
      comparison_operator = "GreaterThanThreshold",
      statistic           = "Sum",
      namespace           = "AWS/Lambda",
      alarm_description   = "CRITICAL"
      dimensions = {
        Resource = "test"
      },
    }
  }
}
