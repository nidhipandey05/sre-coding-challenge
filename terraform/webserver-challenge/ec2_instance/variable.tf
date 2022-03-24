variable "ami" {
  description = "This is the machine image used for the webserver"
  type = string
}

variable "instance_type" {
  description = "Instance type"
  type = string
}

variable "snet" {
  description = "The IPv4 CIDR block for the subnet"
  type = string
}

variable "security_group" {
    description = "Security group attached to webserver"
    type = string
}