# VPC

module "vpc" {
  source          = "terraform-aws-modules/vpc/aws"
  version         = "5.1.2"
  name            = var.vpc_name
  cidr            = var.vpc_cidr
  azs             = var.vpc_azs
  private_subnets = var.vpc_app_subnets
  public_subnets  = var.vpc_web_subnets

  database_subnets             = var.vpc_database_subnets
  create_database_subnet_group = true
  enable_dns_hostnames         = true
  enable_dns_support           = true
  enable_nat_gateway           = true
  single_nat_gateway           = true
  tags                         = var.vpc_tags
}
