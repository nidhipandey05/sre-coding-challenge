variable "gateway_id" {
  description = "The internet gateway id"
  type = string
}

variable "pr_snet" {
  description = "The IPv4 CIDR block for the private subnet"
  type = string
}

variable "pub_snet" {
  description = "The IPv4 CIDR block for the public subnet"
  type = string
}

variable "vpc_id" {
  description = "VPC id"
  type = string
}

variable "nat_id" {
  description = "NAT gateway Id"
  type = string
}