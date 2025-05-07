// modules/ecs_cluster/main.tf

// Create the ECS cluster
resource "aws_ecs_cluster" "this" {
  name = var.name
}

// (Later: ECR repos, task definitions, services using var.subnet_ids and var.security_group_ids)
