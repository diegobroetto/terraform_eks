resource "aws_route_table" "rt_public" {
  vpc_id = aws_vpc.vpc_eks.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }


  tags = merge(
    var.tags,
    {
      Name = "${var.project_name}-public-rt"
    }
  )
}