terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "3.70.0"
    }
  }
}

provider "aws" {
  region  = "${var.aws["region"]}"
  profile = "${var.aws["profile"]}"
}

variable "aws" {
  default = {
    region  = "us-east-1"
    profile = "fpwprod-terraform"
  }
}

variable "environment" {
  default = "prod"
}

variable "aws_account_id" {
  default = "162109821699"
}

variable "region" {
  default = "us-east-1"
}

variable "apigateway_subdomain" {
  default = "api"
}

variable "webapp_subdomain" {
  default = "app"
}

variable "website_subdomain" {
  default = "www"
}
