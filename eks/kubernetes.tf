provider "kubernetes" {
  host                   = module.eks.cluster_endpoint
  cluster_ca_certificate = base64decode(module.eks.cluster_certificate_authority)
  token                  = module.eks.cluster_token
  # load_config_file       = false # You can uncomment this line if you don't want to load the kubeconfig file
}
