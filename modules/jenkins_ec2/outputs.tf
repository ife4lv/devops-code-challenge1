// modules/jenkins_ec2/outputs.tf

output "jenkins_public_ip" {
  value       = aws_instance.jenkins.public_ip
  description = "Public IP of the Jenkins EC2 instance"
}

output "jenkins_id" {
  value       = aws_instance.jenkins.id
  description = "EC2 instance ID for Jenkins"
}
