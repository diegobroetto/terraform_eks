resource "aws_route_table" "rt_private-1a" {
  vpc_id = aws_vpc.vpc_eks.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.ngw_1a.id
  }


  tags = merge(
    var.tags,
    {
      Name = "${var.project_name}-private-rt-1a"
    }
  )
}

resource "aws_route_table" "rt_private-1b" {
  vpc_id = aws_vpc.vpc_eks.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.ngw_1b.id
  }


  tags = merge(
    var.tags,
    {
      Name = "${var.project_name}-private-rt-1b"
    }
  )
}

