module "vpc" {
   source = "terraform-aws-modules/vpc/aws"
    version = "~>2.0"
    name                 = "my-vpc"
    cidr                 = "${lookup(var.cidr_ab, var.environment)}.0.0/16"
    private_subnets      = local.private_subnets
    public_subnets       = local.public_subnets

    azs                  = local.availability_zones

    
}