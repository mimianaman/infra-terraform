# Store Sensitive Data in SSM Parameter Store

# Store RDS Security Group ID in SSM
resource "aws_ssm_parameter" "rds_sg_id" {
  name       = "/${local.name_prefix}/rds_sg_id"
  type       = "String"
  value      = aws_security_group.rds_sg.id
  depends_on = [aws_security_group.rds_sg]

  tags = local.common_tags
}

# Store ALB Security Group ID in SSM
resource "aws_ssm_parameter" "alb_sg_id" {
  name       = "/${local.name_prefix}/alb_sg_id"
  type       = "String"
  value      = aws_security_group.alb_sg.id
  depends_on = [aws_security_group.alb_sg]

  tags = local.common_tags
}

# Store Admin Security Group ID in SSM
resource "aws_ssm_parameter" "admin_sg_id" {
  name       = "/${local.name_prefix}/admin_sg_id"
  type       = "String"
  value      = aws_security_group.admin_sg.id
  depends_on = [aws_security_group.admin_sg]

  tags = local.common_tags
}

resource "aws_ssm_parameter" "asg_sg_id" {
  
   name       = "/${local.name_prefix}/asg_sg_id"
  type       = "String"
  value      = aws_security_group.admin_sg.id
  depends_on = [aws_security_group.asg_sg]

  tags = local.common_tags
}


# Store Kafka Security Group ID in SSM
resource "aws_ssm_parameter" "kafka_sg_id" {
  name       = "/${local.name_prefix}/kafka_sg_id"
  type       = "String"
  value      = aws_security_group.kafka_sg.id

  depends_on = [aws_security_group.kafka_sg]

  tags = local.common_tags
}

# Store Elasticache Security Group ID in SSM
resource "aws_ssm_parameter" "elasticache_sg_id" {
  name       = "/${local.name_prefix}/elasticache_sg_id"
  type       = "String"
  value      = aws_security_group.elasticache_sg.id

  depends_on = [aws_security_group.elasticache_sg]

  tags = local.common_tags
}


