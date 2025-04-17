# Fetch Subnet IDS from SSM Parameter Store
data "aws_ssm_parameter" "public_subnet_ids" {
  name = "/${local.name_prefix}/public_subnet_ids"
}

# Fetch Private Subnet IDs from SSM Parameter Store
data "aws_ssm_parameter" "private_subnet_ids" {
  name = "/${local.name_prefix}/private_subnet_ids"
}

data "aws_ssm_parameter" "kafa_sg_id" {
  name = "/${local.name_prefix}/kafka_sg_id"
}

# Fetch Elasticache SG Group IDs from SSM Parameter Store
data "aws_ssm_parameter" "elasticache_sg_id" {
  name = "/${local.name_prefix}/elasticache_sg_id"
}

# Fetch Kafka SG Group IDs from SSM Parameter Store
data "aws_ssm_parameter" "kafka_sg_id" {
  name = "/${local.name_prefix}/kafka_sg_id"
}