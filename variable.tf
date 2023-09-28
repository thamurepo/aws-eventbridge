variable "access_key" {
  description = "access key"
  default     = "AKIA2VM32KBXOxxxx"
}

variable "secret_key" {
  description = "secret key"
  default     = "rG03YFK0+u8cJxqyPFlyhU+aLXsNQeD8Sdxxxxxx"
}

variable "region" {
 default = "us-east-1"
}

variable "account_id" {
  description = "account id"
  default     = "733155577966"
}

variable "scheduler_name" {
  description = "Name of the scheduler"
  type = string
  default     = "hotdata_testing"
}


variable "scheduler_group" {
  description = "Name of the scheduler group"
  type = string
  default     = "default"
}

variable "schedule_expression" {
  description = "Name of the schedule_expression"
  type = string
  default     = "rate(11 hours)"
}

variable "start_date" {
  description = "Name of the schedule_expression start_date"
  type = string
  default     = "2023-09-30T12:40:00Z"
}

variable "end_date" {
  description = "Name of the schedule_expression end_date"
  type = string
  default     = "2023-11-01T07:00:00Z"
}
##############################################################################
#LAMBDA
###############################################################################

variable "lambda_target_arn" {
  description = "Name of lambda_target_arn"
  type = string
  default     = "arn:aws:lambda:us-east-1:733155577966:function:lla-orchestrator-prepaid-hotdata-response-archive"
}

variable "iam_role_arn" {
  description = "Name of the iam_role_arn"
  type = string
  default     = "arn:aws:iam::733155577966:role/service-role/Amazon_EventBridge_Scheduler_LAMBDA_8d735e9e73"
}

variable "env" {
  description = "Name of the env"
  type = string
  default     = "prod"
}

variable "thread_id" {
  description = "Name of the thread_id"
  type = string
  default     = "1"
}

variable "sql_limit_val" {
  description = "Name of the sql_limit_val"
  type = string
  default     = "10"
}