variable "cidr_block" {}
variable "name" {}
variable "public_subnets_count" {
  default = 2
}
variable "private_subnets_count" {
  default = 2
}
variable "public_subnets_cidr_blocks" {
  type = list(string)
}
variable "private_subnets_cidr_blocks" {
  type = list(string)
}
variable "availability_zones" {
  type = list(string)
}
