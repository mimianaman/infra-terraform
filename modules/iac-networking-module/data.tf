# Fetch AVAILABILITY ZONES
data "aws_availability_zones" "available" {
  state = "available"
}

# Fetch VPC ID from SSM Parameter Store
data "aws_ssm_parameter" "vpc_id" {
  name = "/${local.name_prefix}/vpc_id"

  depends_on = [aws_ssm_parameter.vpc_id]
}

# Fetch Subnet IDS from SSM Parameter Store
data "aws_ssm_parameter" "public_subnet_ids" {
  name = "/${local.name_prefix}/public_subnet_ids"

  depends_on = [aws_ssm_parameter.public_subnet_ids]
}

# Fetch Private Subnet IDs from SSM Parameter Store
data "aws_ssm_parameter" "private_subnet_ids" {
  name = "/${local.name_prefix}/private_subnet_ids"

  depends_on = [aws_ssm_parameter.private_subnet_ids]
}


