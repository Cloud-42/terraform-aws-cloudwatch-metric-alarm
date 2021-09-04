locals {
  alarms = {
    warning = {
      evaluation_periods  = var.evaluation_periods
      comparison_operator = "GreaterThanThreshold"
      statistic           = "Sum"
      namespace           = "AWS/Lambda"
      alarm_actions       = "arn:aws:sns:eu-west-2:11234567991:notify"
      ok_actions          = "arn:aws:sns:eu-west-2:11234567991:notify"
      alarm_description   = "WARNING"
      metric_name         = "Invocations"
      period              = var.period
      threshold           = "30000"
    },
    critical = {
      evaluation_periods  = var.evaluation_periods
      comparison_operator = "GreaterThanThreshold"
      statistic           = "Sum"
      namespace           = "AWS/Lambda"
      alarm_actions       = "arn:aws:sns:eu-west-2:11234567991:notify"
      ok_actions          = "arn:aws:sns:eu-west-2:11234567991:notify"
      alarm_description   = "CRITICAL"
      metric_name         = "Invocations"
      period              = var.period
      threshold           = "60000"
    }
  }
}
