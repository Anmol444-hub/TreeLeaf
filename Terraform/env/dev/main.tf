module "vpc" {
  source              = "../modules/vpc"
  cluster_name        = var.cluster_name
  vpc_cidr            = var.vpc_cidr
  region_azs          = var.region_azs
  num_public_subnets  = var.num_public_subnets
  num_private_subnets = var.num_private_subnets
  project_name        = local.project_name
}

module "eks" {
  source            = "../modules/eks"
  cluster_name      = var.cluster_name
  cluster_version   = var.cluster_version
  private_subnets   = module.vpc.private_subnets
  vpc_id            = module.vpc.vpc_id
  project_name      = local.project_name
}

module "eks_general_nodes" {
  source          = "../modules/eks_node_group"
  cluster_name    = module.eks.cluster_name
  private_subnets = module.vpc.private_subnets
  vpc_id          = module.vpc.vpc_id
  project_name    = local.project_name  
}