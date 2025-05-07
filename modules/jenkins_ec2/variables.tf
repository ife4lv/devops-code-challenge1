// modules/jenkins_ec2/variables.tf

variable "name" {
  description = "A name prefix for Jenkins resources"
  type        = string
}

variable "ami_id" {
  description = "AMI ID for the Ubuntu image"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type for Jenkins"
  type        = string
}

variable "key_name" {
  description = "Key pair name for SSH access"
  type        = string
}

variable "subnet_id" {
  description = "Public subnet ID for Jenkins instance"
  type        = string
}

variable "security_group_id" {
  description = "Security Group ID allowing SSH and HTTP to Jenkins"
  type        = string
}
