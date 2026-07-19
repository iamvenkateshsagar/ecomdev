variable "aws_region" {
  type        = string
  description = "The AWS region where resources will be created."
}

variable "vpc_name" {
  type        = string
  description = "The name of the VPC in us-east-1 region"
}

variable "vpc_cidr" {
  type        = string
  description = "The CIDR block for the VPC in us-east-1 region"
}
