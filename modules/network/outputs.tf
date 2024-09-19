output "subnet_pub_1a" {
  value = aws_subnet.eks_subnet_pub_1a
}

output "subnet_pub_1b" {
  value = aws_subnet.eks_subnet_pub_1b
}

output "subnet_priv_1a" {
  value = aws_subnet.eks_subnet_priv_1a
}

output "subnet_priv_1b" {
  value = aws_subnet.eks_subnet_priv_1b
}

output "vpc_id" {
  value = aws_vpc.vpc_eks.id
}