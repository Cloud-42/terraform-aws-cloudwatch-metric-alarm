output "alarm" {
  description = "CloudWatch metric alarm"
  value       = aws_cloudwatch_metric_alarm.this
}

output "arn" {
  description = "CloudWatch metric alarm arn"
  value       = aws_cloudwatch_metric_alarm.this.arn
}

