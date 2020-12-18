# ----------------------------
# CloudWatch metric alarm
# -----------------------------
resource "aws_cloudwatch_metric_alarm" "this" {
  alarm_name          = var.alarm_name
  comparison_operator = var.comparison_operator
  evaluation_periods  = var.evaluation_periods
  metric_name         = var.metric_name
  namespace           = var.namespace
  period              = var.period
  statistic           = var.statistic
  threshold           = var.threshold
  treat_missing_data  = var.treat_missing_data

  dimensions = {
    FunctionName = var.function_name
  }

  alarm_description = var.alarm_description
  alarm_actions     = var.alarm_actions
  ok_actions        = var.ok_actions
}

