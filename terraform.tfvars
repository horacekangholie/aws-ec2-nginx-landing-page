aws_region                 = "ap-southeast-1"
project_name               = "ec2-nginx-landing-page"
environment                = "dev"
vpc_cidr                   = "10.10.0.0/16"
public_subnet_cidr         = "10.10.1.0/24"
instance_type              = "t3.micro"
root_volume_size_gb        = 8
enable_detailed_monitoring = false
allowed_http_cidrs         = ["0.0.0.0/0"]

common_tags = {
  Owner       = "Horace"
  ManagedBy   = "Terraform"
  Portfolio   = "true"
  ProjectTier = "foundation"
}