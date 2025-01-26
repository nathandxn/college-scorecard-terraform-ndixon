# General Variables

variable "region" {
  description = "Default region for provider"
  type        = string
  default     = "us-east-1"
}

variable "ecr_repository_name" {
  description = "Name of ecr repository to push images"
  type        = string
}
