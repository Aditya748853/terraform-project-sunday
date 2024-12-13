provider "aws" {
  region = var.region
}

module "vpc" {
  source                  = "./modules/vpc"
  cidr_block              = var.vpc_cidr_block
  name                    = var.project_name
  public_subnets_cidr_blocks = var.public_subnets_cidr_blocks
  private_subnets_cidr_blocks = var.private_subnets_cidr_blocks
  availability_zones      = var.availability_zones
}

module "autoscaling" {
  source                = "./modules/ec2_autoscaling"
  name                  = var.project_name
  ami_id                = var.ami_id
  instance_type         = var.instance_type
  subnet_ids            = module.vpc.public_subnet_ids
  security_group_ids    = [aws_security_group.main.id]
}

module "lambda" {
  source           = "./modules/lambda"
  lambda_name      = "my-lambda"
  lambda_handler   = "app.handler"
  lambda_runtime   = "python3.9"
  zip_file         = "lambda_function.zip"
}

resource "aws_security_group" "main" {
  name   = "${var.project_name}-sg"
  vpc_id = module.vpc.vpc_id
}
