terraform {
  required_version = ">= 1.8"

  cloud {
    organization = "venkatsagario"

    workspaces {
      name = "ecomdev"
    }
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}
