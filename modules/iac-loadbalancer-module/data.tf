# Fetch AVAILABILITY ZONES
data "aws_availability_zones" "available" {
  state = "available"
}

# Fetch VPC ID from SSM Parameter Store
data "aws_ssm_parameter" "vpc_id" {
  name = "/${local.name_prefix}/vpc_id"
}

# Fetch Subnet IDS from SSM Parameter Store
data "aws_ssm_parameter" "public_subnet_ids" {
  name = "/${local.name_prefix}/public_subnet_ids"
}

# Fetch Private Subnet IDs from SSM Parameter Store
data "aws_ssm_parameter" "private_subnet_ids" {
  name = "/${local.name_prefix}/private_subnet_ids"
}

# Fetch Security ALB Security Group IDs from SSM Parameter Store
data "aws_ssm_parameter" "alb_sg_id" {
  name = "/${local.name_prefix}/alb_sg_id"
}

# Fetch Log Bucket From SSM Parameter Store
data "aws_s3_bucket" "alb_logs" {
  bucket = "${local.name_prefix}-alb-logs"
}

# Fetch ASG SG ID from SSM Parameter Store
data "aws_ssm_parameter" "alb_target_group_arn" {
  name = "/${local.name_prefix}/alb_target_group_arn"
   depends_on = [aws_ssm_parameter.alb_target_group_arn]
}