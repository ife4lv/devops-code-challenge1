module "jenkins" {
  source            = "./modules/jenkins_ec2"
  name              = "techchall1"
  ami_id            = "ami-04f167a56786e4b09"
  instance_type     = "t2.micro"
  key_name          = "W7TC"
  subnet_id         = module.vpc.public_subnet_ids[0]
  security_group_id = module.sg.jenkins_sg_id
}
