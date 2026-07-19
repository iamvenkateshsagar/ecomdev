variable "aws_region" {
  type        = string
  description = "The AWS region where resources will be created."
}

variable "vpc_name" {
  type = string
}

variable "vpc_cidr" {
  type = string
}
