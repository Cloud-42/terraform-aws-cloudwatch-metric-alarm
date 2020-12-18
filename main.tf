# ----------------------------
# CloudWatch metric alarm
# -----------------------------
resource "aws_cloudwatch_metric_alarm" "this" {
  alarm_name          = var.alarm_name
  comparison_operator = var.comparison_operator
  evaluation_periods  = var.evaluation_periods
  metric_name         = var.metric_name != "" ? var.metric_name : null
  namespace           = var.namespace != "" ? var.namespace : null
  period              = var.period != 0 ? var.period : null
  statistic           = var.statistic != "" ? var.statistic : null
  threshold           = var.threshold != 0 ? var.threshold : null
  treat_missing_data  = var.treat_missing_data != "missing" ? var.treat_missing_data : null

  dynamic "dimensions" {
    for_each = var.dimensions
    content {
      name  = dimensions.value["name"]
      value = dimensions.value["value"]
    }
  }

  alarm_description = var.alarm_description != "" ? var.alarm_description : null
  alarm_actions     = var.alarm_actions != "" ? var.alarm_actions : null
  ok_actions        = var.ok_actions != "" ? var.ok_actions : null
}

