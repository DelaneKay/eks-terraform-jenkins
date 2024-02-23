module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = "jenkins-vpc"
  cidr = "10.0.0.0/16"

  azs            = ["eu-east-1a", "eu-east-1b"]
  public_subnets = ["10.0.3.0/24", "10.0.4.0/24"]

  enable_nat_gateway      = true
  map_public_ip_on_launch = true


  tags = {
    Name        = "jenkins-vpc"
    Terraform   = "true"
    Environment = "dev"
  }

  public_subnet_tags = {
    Name = "jenkins-subnet"
  }
}