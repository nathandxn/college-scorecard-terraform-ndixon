terraform {
  required_version = ">= v1.5.7"
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "ndixon"
    workspaces {
      name = "college-scorecard"
    }
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

provider "aws" {
  region = var.region
}

resource "aws_ecr_repository" "college-scorecard-reporting-api-repository" {
  name                 = var.ecr_repository_name
  image_tag_mutability = "IMMUTABLE"
}
