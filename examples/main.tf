# --------------
# Alarms
# --------------
module "cw_alarms" {
  for_each = local.alarms
  source   = "git::https://github.com/Cloud-42/terraform-aws-cloudwatch-metric-alarm.git?ref=v2.0"

  alarm_name          = each.key
  metric_name         = each.value.metric_name
  evaluation_periods  = each.value.evaluation_periods
  period              = each.value.period
  comparison_operator = each.value.comparison_operator
  statistic           = each.value.statistic
  namespace           = each.value.namespace
  threshold           = each.value.threshold
  alarm_description   = each.value.alarm_description
  alarm_actions       = each.value.alarm_actions
  ok_actions          = each.value.ok_actions
}
