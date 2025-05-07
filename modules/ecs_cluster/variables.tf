// modules/ecs_cluster/variables.tf

variable "name" {
  description = "A name prefix for ECS resources"
  type        = string
}

variable "vpc_id" {
  description = "The VPC ID where ECS cluster will be placed"
  type        = string
}

variable "subnet_ids" {
  description = "List of subnet IDs for ECS services"
  type        = list(string)
}

variable "security_group_ids" {
  description = "List of security group IDs to assign to ECS services"
  type        = list(string)
}
