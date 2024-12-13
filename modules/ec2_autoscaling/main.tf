resource "aws_launch_configuration" "main" {
  name          = "${var.name}-launch-configuration"
  image_id      = var.ami_id
  instance_type = var.instance_type
  user_data     = var.user_data
  security_groups = var.security_group_ids
}

resource "aws_autoscaling_group" "main" {
  name                = "${var.name}-autoscaling-group"
  max_size            = var.max_size
  min_size            = var.min_size
  desired_capacity    = var.desired_capacity
  vpc_zone_identifier = var.subnet_ids
  launch_configuration = aws_launch_configuration.main.id
}
