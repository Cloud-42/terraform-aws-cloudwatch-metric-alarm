variable "alarm_name" {
  type        = string
  description = "Alarm name"
}

variable "actions_enabled" {
  type        = bool
  description = "Indicates whether or not actions should be executed during any changes to the alarm's state."
  default     = true
}

variable "comparison_operator" {
  type        = string
  description = "The arithmetic operation to use when comparing the specified Statistic and Threshold. GreaterThanOrEqualToThreshold, GreaterThanThreshold, LessThanThreshold, LessThanOrEqualToThreshold."
}

variable "evaluation_periods" {
  type        = number
  description = "The number of periods over which data is compared to the specified threshold."
}

variable "metric_name" {
  type        = string
  description = "The name for the alarm's associated metric - https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/aws-services-cloudwatch-metrics.html"
  default     = "Error"
}

variable "namespace" {
  type        = string
  description = "The namespace for the alarm's associated metric - https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/aws-services-cloudwatch-metrics.html"
  default     = ""
}

variable "period" {
  type        = number
  description = "The period in seconds over which the specified statistic is applied."
  default     = 60
}

variable "statistic" {
  type        = string
  description = "The statistic to apply to the alarm's associated metric. SampleCount, Average, Sum, Minimum, Maximum"
  default     = ""
}

variable "threshold" {
  type        = number
  description = "The value against which the specified statistic is compared."
  default     = 0
}

variable "treat_missing_data" {
  type        = string
  description = "How the alarm handles missing data points. Missing, ignore, breaching and notBreaching."
  default     = "missing"
}

variable "dimensions" {
  type        = map
  description = "The dimensions for this metric - https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/aws-services-cloudwatch-metrics.html"
}

variable "alarm_description" {
  type        = string
  description = "Alarm description"
  default     = ""
}

variable "alarm_actions" {
  type        = string
  description = "The list of actions to execute when this alarm transitions into an ALARM state from any other state. ARN required"
  default     = ""
}

variable "ok_actions" {
  type        = string
  description = "The list of actions to execute when this alarm transitions into an OK state from any other state. ARN required"
  default     = ""
}
