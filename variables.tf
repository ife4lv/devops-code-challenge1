variable "aws_region" {
  description = "AWS region to deploy resources in"
  type        = string
  default     = "us-east-2"
}

variable "vpc_cidr_block" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "public_subnet_cidrs" {
  description = "List of CIDRs for public subnets"
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "ami_id" {
  description = "AMI ID for Jenkins EC2"
  type        = string
  default     = "ami-04f167a56786e4b09"  // your Ubuntu AMI
}

variable "key_name" {
  description = "SSH key pair name"
  type        = string
  default     = "W7TC"
}
