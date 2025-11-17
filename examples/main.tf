module "networking" {
  source = "git::https://github.com/cloudbloqs/terraform-aws-cloudbloqs-networking.git"
  vpc_config = {
    name       = "vpc-cloudbloq-dev-useast"
    cidr_block = "10.0.0.0/16"
  }
  subnet_config = {
    "subnet_1" : {
      cidr_block = "10.0.0.0/24"
      az         = "us-east-1a"
    }
    "subnet_2" : {
      cidr_block = "10.0.1.0/24"
      public     = true
      az         = "us-east-1a"
    }
  }
}
