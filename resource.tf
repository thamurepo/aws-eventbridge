resource "aws_scheduler_schedule" "example" {
  name       = var.scheduler_name
  group_name = var.scheduler_group

  flexible_time_window {
    mode = "OFF"
  }

  schedule_expression = var.schedule_expression
  schedule_expression_timezone = "Asia/Calcutta"
  start_date = var.start_date
  end_date   = var.end_date



  target {
    arn      = var.lambda_target_arn
    role_arn = var.iam_role_arn
    #input = jsonencode({"env":"prod", "thread_id":1, "sql_limit_val":10})
    input = jsonencode({"env":var.env, "thread_id":var.thread_id, "sql_limit_val":var.sql_limit_val})

  retry_policy {
     maximum_event_age_in_seconds = "86400"
     maximum_retry_attempts = "185"
  }
  }

}