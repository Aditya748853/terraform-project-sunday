output "vpc_id" {
  value = module.vpc.vpc_id
}

output "public_subnet_ids" {
  value = module.vpc.public_subnet_ids
}

output "private_subnet_ids" {
  value = module.vpc.private_subnet_ids
}

output "autoscaling_group_name" {
  value = module.autoscaling.autoscaling_group_name
}

output "lambda_function_name" {
  value = module.lambda.lambda_function_name
}
