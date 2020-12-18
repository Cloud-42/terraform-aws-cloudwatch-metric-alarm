output "alarms" {
  value = module.cw[*]
}
output "warning_alarm_arn" {
  value = module.cw[*].warning.alarm.arn
}
output "critical_alarm_arn" {
  value = module.cw[*].critical.alarm.arn
}
output "all_arns" {
  value = values(module.cw)[*].alarm.arn
}
