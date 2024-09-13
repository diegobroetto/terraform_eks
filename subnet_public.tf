resource "aws_subnet" "eks_subnet_pub_1a" {
  vpc_id                  = aws_vpc.vpc_eks.id
  cidr_block              = cidrsubnet(var.cidr_block, 8, 1)
  availability_zone       = "${data.aws_region.current.name}a"
  map_public_ip_on_launch = true

  tags = merge(
    local.tags,
    {
      Name                     = "eks_subnet_pub_1a"
      "kubernetes.io/role/elb" = 1
    }
  )
}

resource "aws_subnet" "eks_subnet_pub_1b" {
  vpc_id                  = aws_vpc.vpc_eks.id
  cidr_block              = cidrsubnet(var.cidr_block, 8, 2)
  availability_zone       = "${data.aws_region.current.name}b"
  map_public_ip_on_launch = true

  tags = merge(
    local.tags,
    {
      Name                     = "eks_subnet_pub_1b"
      "kubernetes.io/role/elb" = 1
    }
  )
}