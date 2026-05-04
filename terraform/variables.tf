variable "aws_region" {
  description = "AWS region to deploy resources"
  type        = string
  default     = "us-east-1"
}

variable "github_username" {
  description = "GitHub username for OIDC trust policy"
  type        = string
  default     = "NkagisangCloud"
}

variable "github_repo" {
  description = "GitHub repository name"
  type        = string
  default     = "flask-cicd-app"
}

variable "app_name" {
  description = "Application name used for naming resources"
  type        = string
  default     = "flask-app"
}

variable "container_port" {
  description = "Port the container listens on"
  type        = number
  default     = 5000
}
