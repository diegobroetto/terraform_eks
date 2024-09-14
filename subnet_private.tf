resource "aws_subnet" "eks_subnet_priv_1a" {
  vpc_id            = aws_vpc.vpc_eks.id
  cidr_block        = cidrsubnet(var.cidr_block, 8, 3)
  availability_zone = "${data.aws_region.current.name}a"

  tags = merge(
    local.tags,
    {
      Name                              = "${var.project_name}-subnet-priv-1a"
      "kubernetes.io/role/internal-elb" = 1
    }
  )
}

resource "aws_subnet" "eks_subnet_priv_1b" {
  vpc_id            = aws_vpc.vpc_eks.id
  cidr_block        = cidrsubnet(var.cidr_block, 8, 4)
  availability_zone = "${data.aws_region.current.name}b"

  tags = merge(
    local.tags,
    {
      Name                              = "${var.project_name}-subnet-priv-1b"
      "kubernetes.io/role/internal-elb" = 1
    }
  )
}