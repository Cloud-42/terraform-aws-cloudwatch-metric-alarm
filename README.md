<p align="center">
  <a href="https://www.cloud42.io/" target="_blank" rel="Homepage">
  <img width="200" height="200" src="https://www.cloud42.io/wp-content/uploads/2020/01/transparent_small.png">
  </a>
</p>

---
<p align="center">Need help with your Cloud builds <a href="https://www.cloud42.io/contact/" target="_blank" rel="ContactUS"> DROP US A LINE</a>.</p>

---
# terraform-aws-cloudwatch-metric-alarm
Creates a CloudWatch metric alarm.

## Requirements

| Name | Version |
|------|---------|
| terraform | >= 0.13.5 |

## Providers

| Name | Version |
|------|---------|
| aws | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| alarm\_actions | The list of actions to execute when this alarm transitions into an ALARM state from any other state. ARN required | `string` | `""` | no |
| alarm\_description | Alarm description | `string` | `""` | no |
| alarm\_name | Alarm name | `string` | n/a | yes |
| comparison\_operator | The arithmetic operation to use when comparing the specified Statistic and Threshold. GreaterThanOrEqualToThreshold, GreaterThanThreshold, LessThanThreshold, LessThanOrEqualToThreshold. | `string` | n/a | yes |
| dimensions | The dimensions for this metric - https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/aws-services-cloudwatch-metrics.html | `map` | n/a | yes |
| evaluation\_periods | The number of periods over which data is compared to the specified threshold. | `number` | n/a | yes |
| metric\_name | The name for the alarm's associated metric - https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/aws-services-cloudwatch-metrics.html | `string` | `"Error"` | no |
| namespace | The namespace for the alarm's associated metric - https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/aws-services-cloudwatch-metrics.html | `string` | `""` | no |
| ok\_actions | The list of actions to execute when this alarm transitions into an OK state from any other state. ARN required | `string` | `""` | no |
| period | The period in seconds over which the specified statistic is applied. | `number` | `60` | no |
| statistic | The statistic to apply to the alarm's associated metric. SampleCount, Average, Sum, Minimum, Maximum | `string` | `""` | no |
| threshold | The value against which the specified statistic is compared. | `number` | `0` | no |
| treat\_missing\_data | How the alarm handles missing data points. Missing, ignore, breaching and notBreaching. | `string` | `"missing"` | no |

## Outputs

| Name | Description |
|------|-------------|
| alarm | CloudWatch metric alarm |


