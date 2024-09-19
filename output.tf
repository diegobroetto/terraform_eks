output "subnet_pub_1a" {
  value = module.eks_network.subnet_pub_1a.id
}

output "subnet_pub_1b" {
  value = module.eks_network.subnet_pub_1b.id
}

output "subnet_priv_1a" {
  value = module.eks_network.subnet_priv_1a.id
}

output "subnet_priv_1b" {
  value = module.eks_network.subnet_priv_1b.id
}

output "eks_vpc_config" {
  value = module.eks_cluster.eks_vpc_config
}

output "oidc" {
  value = module.eks_cluster.oidc
}

output "endpoint" {
  value = module.eks_cluster.endpoint
}

output "certificate_authority" {
  value = module.eks_cluster.certificate_authority
}





