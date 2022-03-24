resource "aws_subnet" "public_subnet" {
  availability_zone       = var.availability_zone
  cidr_block              = var.pub_snet_cidr
  vpc_id                  = var.vpc_id
  map_public_ip_on_launch = true
  tags = {
    Name = "snet-public-demo2"
  }
}

resource "aws_subnet" "private_subnet" {
  availability_zone = var.availability_zone
  cidr_block        = var.pr_snet_cidr
  vpc_id            = var.vpc_id
  tags = {
    Name = "snet-private-demo2"
  }
}