resource "aws_vpc" "vpc_eks" {
  cidr_block           = var.cidr_block
  enable_dns_hostnames = true
  enable_dns_support   = true

  tags = merge(
    local.tags,
    {
      Name = "${var.project_name}-vpc"
    }
  )
}

