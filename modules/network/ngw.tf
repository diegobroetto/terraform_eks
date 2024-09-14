resource "aws_eip" "ngw_eip_1a" {
  domain = "standard"
  tags = merge(
    var.tags,
    {
      Name = "${var.project_name}-ngw-eip-1a"
    }
  )
}

resource "aws_eip" "ngw_eip_1b" {
  domain = "standard"
  tags = merge(
    var.tags,
    {
      Name = "${var.project_name}-ngw-eip-1b"
    }
  )
}

resource "aws_nat_gateway" "ngw_1a" {
  allocation_id = aws_eip.ngw_eip_1a.id
  subnet_id     = aws_subnet.eks_subnet_pub_1a.id

  tags = merge(
    var.tags,
    {
      Name = "${var.project_name}-ngw-1a"
    }
  )

  depends_on = [aws_internet_gateway.igw]
}

resource "aws_nat_gateway" "ngw_1b" {
  allocation_id = aws_eip.ngw_eip_1b.id
  subnet_id     = aws_subnet.eks_subnet_pub_1b.id

  tags = merge(
    var.tags,
    {
      Name = "${var.project_name}-ngw-1b"
    }
  )

  depends_on = [aws_internet_gateway.igw]
}