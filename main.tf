module "vpc" {

  source = "./modules/vpc"

  vpc_name = var.vpc_name
  vpc_cidr = var.vpc_cidr

}

module "secrets_manager" {
  source  = "terraform-aws-modules/secrets-manager/aws"
  version = "~> 1.3"

  name        = "dev/db/credentials"
  description = "Database credentials"

  secret_string = jsonencode({
    username = "dbadmin"
    password = "ChangeMeAtRuntime123!"
  })

  recovery_window_in_days = 7

  tags = {
    Environment = "dev"
    ManagedBy   = "terraform"
  }
}
