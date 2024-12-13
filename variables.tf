variable "region" {
  default = "us-east-1"
}
variable "vpc_cidr_block" {}
variable "public_subnets_cidr_blocks" {
  type = list(string)
}
variable "private_subnets_cidr_blocks" {
  type = list(string)
}
variable "availability_zones" {
  type = list(string)
}
variable "project_name" {}
variable "ami_id" {}
variable "instance_type" {}
