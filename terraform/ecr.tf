resource "aws_ecr_repository" "flask_app" {
  name                 = var.github_repo
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }

  tags = {
    Name    = var.github_repo
    Project = var.app_name
  }
}
