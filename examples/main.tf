# --------------
# Alarms
# --------------
module "cw_alarms" {

  for_each = var.alarms

  source = "git::https://github.com/Cloud-42/terraform-aws-cloudwatch-metric-alarm.git?ref=1.0"

  alarm_name          = each.key
  evaluation_periods  = each.value.evaluation_periods
  comparison_operator = each.value.comparison_operator
  statistic           = each.value.statistic
  namespace           = each.value.namespace
  dimensions          = each.value.dimensions
  alarm_description   = each.value.alarm_description

  alarm_actions = each.key == "warning" ? "arn:aws:sns:eu-west-2:11234567991:notify_warning" : "arn:aws:sns:eu-west-2:160676534451:notify_critical"
  ok_actions    = each.key == "warning" ? "arn:aws:sns:eu-west-2:11234567991:notify_warning" : "arn:aws:sns:eu-west-2:160676534451:notify_critical"
}

