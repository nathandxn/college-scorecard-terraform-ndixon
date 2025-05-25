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

resource "aws_vpc" "main_vpc" {
  cidr_block = "10.0.0.0/16"
}

resource "aws_subnet" "subnet1" {
  vpc_id                  = aws_vpc.main_vpc.id
  cidr_block              = "10.0.1.0/24"
  availability_zone       = "us-east-1a"
  map_public_ip_on_launch = true
}

resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.main_vpc.id
}
