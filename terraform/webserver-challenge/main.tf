module "vpc" {
  source     = "./vpc"
  cidr_block = var.vpc_cidr
}

module "subnet" {
  source            = "./subnet"
  availability_zone = var.availability_zone
  pub_snet_cidr     = var.pub_snet_cidr
  pr_snet_cidr      = var.pr_snet_cidr
  vpc_id            = module.vpc.vpc_id

}

module "internet_gateway" {
  source = "./internet_gateway"
  vpc_id = module.vpc.vpc_id
}

module "nat_gateway" {
  source    = "./nat_gateway"
  subnet_id = module.subnet.pub_subnet_id
  depends_on = [
    module.internet_gateway
  ]
}

module "route" {
  source     = "./route_table"
  vpc_id     = module.vpc.vpc_id
  gateway_id = module.internet_gateway.ig_id
  nat_id     = module.nat_gateway.nat_id
  pub_snet   = module.subnet.pub_subnet_id
  pr_snet    = module.subnet.private_subnet_id
}

module "sg" {
  source = "./network_security_group"
  vpc_id = module.vpc.vpc_id
}

module "webserver" {
  source         = "./ec2_instance"
  ami            = var.ami
  instance_type  = var.instance_type
  snet           = module.subnet.pub_subnet_id
  security_group = module.sg.sg_id
}