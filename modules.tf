module "eks_network" {
  source       = "./modules/network"
  cidr_block   = var.cidr_block
  project_name = var.project_name
  tags         = local.tags
}

module "eks_cluster" {
  source           = "./modules/cluster"
  project_name     = var.project_name
  tags             = local.tags
  public_subnet_1a = module.eks_network.subnet_pub_1a.id
  public_subnet_1b = module.eks_network.subnet_pub_1b.id
}

module "eks_managed_node_group" {
  source            = "./modules/managed-node-group"
  project_name      = var.project_name
  cluster_name      = module.eks_cluster.cluster_name
  private_subnet_1a = module.eks_network.subnet_priv_1a.id
  private_subnet_1b = module.eks_network.subnet_priv_1b.id
  instance_types    = var.instance_types
  tags              = local.tags
}

module "eks_aws_load_balancer_controller" {
  source       = "./modules/aws-load-balancer-controler"
  project_name = var.project_name
  tags         = local.tags
}