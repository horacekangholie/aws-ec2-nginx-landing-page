output "vpc_id" {
  description = "VPC ID"
  value       = aws_vpc.this.id
}

output "public_subnet_id" {
  description = "Public subnet ID"
  value       = aws_subnet.public_a.id
}

output "web_instance_id" {
  description = "EC2 instance ID"
  value       = aws_instance.web.id
}

output "web_instance_public_ip" {
  description = "Public IP of the EC2 instance"
  value       = aws_instance.web.public_ip
}

output "web_instance_public_dns" {
  description = "Public DNS of the EC2 instance"
  value       = aws_instance.web.public_dns
}

output "website_url" {
  description = "HTTP URL of the landing page"
  value       = "http://${aws_instance.web.public_dns}"
}

output "ssm_start_session_command" {
  description = "Command to start a Session Manager shell to the instance"
  value       = "aws ssm start-session --target ${aws_instance.web.id} --region ${var.aws_region}"
}