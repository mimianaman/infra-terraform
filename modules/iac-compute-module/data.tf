# Select latest  available version of Ubuntu for use as a base image
data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}

# Fetch Admin SG ID from SSM Parameter Store
data "aws_ssm_parameter" "admin_sg_id" {
  name = "/${local.name_prefix}/admin_sg_id"
}

# Fetch Security ALB Security Group IDs from SSM Parameter Store
data "aws_ssm_parameter" "alb_sg_id" {
  name = "/${local.name_prefix}/alb_sg_id"
  
}

# Fetch Subnet IDS from SSM Parameter Store
data "aws_ssm_parameter" "public_subnet_ids" {
  name = "/${local.name_prefix}/public_subnet_ids"
}

# Fetch Private Subnet IDs from SSM Parameter Store
data "aws_ssm_parameter" "private_subnet_ids" {
  name = "/${local.name_prefix}/private_subnet_ids"
}

data "aws_iam_instance_profile" "admin_profile" {
  name = "${local.name_prefix}-admin-profile"
}

data "aws_iam_instance_profile" "app_profile" {
  name = "${local.name_prefix}-app-profile"
}

# Fetch ASG SG ID from SSM Parameter Store
data "aws_ssm_parameter" "asg_sg_id" {
  name = "/${local.name_prefix}/asg_sg_id"
}