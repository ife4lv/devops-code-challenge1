// modules/security_group/outputs.tf

output "jenkins_sg_id" {
  value       = aws_security_group.jenkins.id
  description = "Security Group ID for Jenkins EC2"
}

output "ecs_sg_id" {
  value       = aws_security_group.ecs.id
  description = "Security Group ID for ECS services"
}
