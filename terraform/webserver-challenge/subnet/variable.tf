variable "availability_zone" {
    description = "Availability zone"
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

variable "vpc_id" {
        description = "vpc id"
    type = string
}