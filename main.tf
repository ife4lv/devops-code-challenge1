// main.tf

// 1. Provider (we moved this to provider.tf)
// 2. VPC Module
module "vpc" {
  source              = "./modules/vpc"
  name                = "techchall1"
  cidr_block          = var.vpc_cidr_block
  public_subnet_cidrs = var.public_subnet_cidrs
}

// 3. Security Group Module (we’ll refer to it as "sg")
module "sg" {
  source   = "./modules/security_group"
  name     = "techchall1"
  vpc_id   = module.vpc.vpc_id
}

// 4. Jenkins EC2 Module
module "jenkins" {
  source            = "./modules/jenkins_ec2"
  name              = "techchall1"
  ami_id            = var.ami_id            // or hardcode your AMI if preferred
  instance_type     = "t3.micro"
  key_name          = var.key_name
  subnet_id         = module.vpc.public_subnet_ids[0]
  security_group_id = module.sg.jenkins_sg_id
}

// 5. ECS Cluster Module
module "ecs" {
  source             = "./modules/ecs_cluster"
  name               = "techchall1"
  vpc_id             = module.vpc.vpc_id
  subnet_ids         = module.vpc.public_subnet_ids
  security_group_ids = [module.sg.ecs_sg_id]
}
