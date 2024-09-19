include {
  path = find_in_parent_folders()
}

dependency "vpc" {
  config_path = "../vpc"
}

inputs = {
  cluster_name = "example-eks-cluster"
  vpc_id       = dependency.vpc.outputs.vpc_id
  public_subnets = dependency.vpc.outputs.public_subnets
}