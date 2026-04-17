variable "aws_region" {
  description = "AWS region for deployment."
  type        = string
  default     = "ap-southeast-1"
}

variable "project_name" {
  description = "Project name used in resource naming and tags."
  type        = string
  default     = "ec2-nginx-landing-page"
}

variable "environment" {
  description = "Environment name."
  type        = string
  default     = "dev"
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC."
  type        = string
  default     = "10.10.0.0/16"
}

variable "public_subnet_cidr" {
  description = "CIDR block for the public subnet."
  type        = string
  default     = "10.10.1.0/24"
}

variable "instance_type" {
  description = "EC2 instance type."
  type        = string
  default     = "t3.micro"
}

variable "root_volume_size_gb" {
  description = "Root EBS volume size in GiB."
  type        = number
  default     = 8
}

variable "enable_detailed_monitoring" {
  description = "Enable 1-minute detailed monitoring for EC2. This can incur CloudWatch charges."
  type        = bool
  default     = false
}

variable "allowed_http_cidrs" {
  description = "CIDR ranges allowed to access HTTP port 80."
  type        = list(string)
  default     = ["0.0.0.0/0"]
}

variable "ec2_ami_ssm_parameter" {
  description = "SSM public parameter path for the AMI."
  type        = string
  default     = "/aws/service/ami-amazon-linux-latest/al2023-ami-kernel-default-x86_64"
}

variable "common_tags" {
  description = "Additional tags applied to all resources."
  type        = map(string)
  default = {
    Owner       = "Horace"
    ManagedBy   = "Terraform"
    Portfolio   = "true"
    ProjectTier = "foundation"
  }
}