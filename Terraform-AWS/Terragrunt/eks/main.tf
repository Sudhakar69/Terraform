module "eks" {
  source          = "terraform-aws-modules/eks/aws"
  cluster_name    = var.cluster_name
  cluster_version = "1.21"
  subnets         = var.public_subnets
  vpc_id          = var.vpc_id

  node_groups = {
    eks_nodes = {
      desired_capacity = 2
      max_capacity     = 3
      min_capacity     = 1

      instance_type = "t2.medium"
    }
  }
}

output "cluster_name" {
  value = module.eks.cluster_id
}

output "kubeconfig" {
  value     = module.eks.kubeconfig
  sensitive = true
}