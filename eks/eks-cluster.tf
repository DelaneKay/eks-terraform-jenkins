module "eks" {
  source = "terraform-aws-modules/eks/aws"

  cluster_name    = "my-new-cluster"
  cluster_version = "1.24"

  cluster_endpoint_public_access = true

  vpc_id     = module.vpc.vpc_id
  subnet_ids = module.vpc.private_subnets

  eks_managed_node_groups = {
    nodes = {
      min_size     = 1
      max_size     = 3
      desired_size = 2

      instance_type = ["t2.micro"]
    }
  }

  tags = {
    Environment = "dev"
    Terraform   = "true"
  }
}