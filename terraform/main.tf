terraform {
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

resource "aws_ecr_repository" "college-scorecard-repository" {
  name = "college-scorecard"
}