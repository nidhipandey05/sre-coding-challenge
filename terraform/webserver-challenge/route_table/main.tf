resource "aws_route_table" "rt_public" {
  vpc_id = var.vpc_id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = var.gateway_id
  }
  tags = {
    Name = "rt-public-demo2"
  }
}

resource "aws_route_table" "rt_private" {
  vpc_id = var.vpc_id
  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = var.nat_id
  }
  tags = {
    Name = "rt-private-demo2"
  }
}

resource "aws_route_table_association" "rt_private" {
  subnet_id      = var.pr_snet
  route_table_id = aws_route_table.rt_private.id
}

resource "aws_route_table_association" "rt_public" {
  subnet_id      = var.pub_snet
  route_table_id = aws_route_table.rt_public.id
}
