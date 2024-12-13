module "autoscaling" {
  source                = "./modules/ec2_autoscaling"
  name                  = var.project_name
  ami_id                = var.ami_id
  instance_type         = var.instance_type
  subnet_ids            = module.vpc.public_subnet_ids
  security_group_ids    = [aws_security_group.main.id]
  user_data             = file("${path.module}/startup.sh") # Correctly reference the startup script
}
