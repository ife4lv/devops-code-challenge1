// modules/security_group/variables.tf

variable "name" {
  description = "A name prefix for resources"
  type        = string
}

variable "vpc_id" {
  description = "The VPC ID where security groups will be created"
  type        = string
}
