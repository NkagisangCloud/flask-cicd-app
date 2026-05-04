resource "aws_cloudwatch_log_group" "flask_app" {
  name              = "/ecs/${var.app_name}"
  retention_in_days = 7

  tags = {
    Name    = "/ecs/${var.app_name}"
    Project = var.app_name
  }
}
