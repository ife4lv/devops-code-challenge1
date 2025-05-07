// modules/ecs_cluster/outputs.tf

output "cluster_id" {
  description = "ECS cluster ID"
  value       = aws_ecs_cluster.this.id
}

output "cluster_arn" {
  description = "ECS cluster ARN"
  value       = aws_ecs_cluster.this.arn
}

output "ecr_repo_frontend" {
  description = "URL of the frontend ECR repository"
  value       = aws_ecr_repository.frontend.repository_url
}

output "ecr_repo_backend" {
  description = "URL of the backend ECR repository"
  value       = aws_ecr_repository.backend.repository_url
}

output "service_frontend" {
  description = "ARN of the frontend ECS service"
  value       = aws_ecs_service.frontend.id
}

output "service_backend" {
  description = "ARN of the backend ECS service"
  value       = aws_ecs_service.backend.id
}
