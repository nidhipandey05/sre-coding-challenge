variable "vpc_cidr" {
  description = "The IPv4 CIDR block for the VPC. CIDR can be explicitly set or it can be derived from IPAM using ipv4_netmask_length."
  type = string
}

variable "availability_zone" {
  description = "AWS availability zone"
  type = string
}

variable "pub_snet_cidr" {
  description = "The IPv4 CIDR block for the public subnet"
  type = string
}

variable "pr_snet_cidr" {
  description = "The IPv4 CIDR block for the private subnet"
  type = string
}

variable "ami" {
  description = "This is the machine image used for the webserver"
  type = string
}

variable "instance_type" {
  description = "Instance type"
  type = string
}