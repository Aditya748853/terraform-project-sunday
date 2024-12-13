variable "name" {}
variable "ami_id" {}
variable "instance_type" {}
variable "user_data" {}
variable "security_group_ids" {
  type = list(string)
}
variable "subnet_ids" {
  type = list(string)
}
variable "max_size" {
  default = 3
}
variable "min_size" {
  default = 1
}
variable "desired_capacity" {
  default = 2
}
