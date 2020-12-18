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
  statistic           = var.statistic != "" ? var.statistic : null
  threshold           = var.threshold != 0 ? var.threshold : null
  treat_missing_data  = var.treat_missing_data != "missing" ? var.treat_missing_data : null

  dimensions = var.dimensions

  alarm_description = var.alarm_description != "" ? var.alarm_description : null
  alarm_actions     = var.alarm_actions != "" ? [var.alarm_actions] : null
  ok_actions        = var.ok_actions != "" ? [var.ok_actions] : null
}

