# Create Security Group for ASG
resource "aws_security_group" "asg_sg" {
  name        = local.asg_sg_name
  description = "Security group for ASG"
  vpc_id      = data.aws_ssm_parameter.vpc_id.value
  ingress {
    description = "Allow SSH traffic from anywhere"
    from_port   = var.ssh_port
    to_port     = var.ssh_port
    protocol    = var.protocol
    cidr_blocks = var.allowed_cidr_blocks
  }
  egress {
    description = "Allow all traffic to anywhere"
    from_port   = var.outbound_port
    to_port     = var.outbound_port
    protocol    = "-1"
    cidr_blocks = var.allowed_cidr_blocks
  }

  tags = merge(local.common_tags,
    {
      Name = "${local.asg_sg_name}"
  })
}

# Create Security Group for RDS
resource "aws_security_group" "rds_sg" {
  name        = local.rds_sg_name
  description = "Allow MySQL"
  vpc_id      = data.aws_ssm_parameter.vpc_id.value

  ingress {
    from_port   = var.rds_port
    to_port     = var.rds_port
    protocol    = var.protocol
    cidr_blocks = var.allowed_cidr_blocks
  }

  egress {
    from_port   = var.outbound_port
    to_port     = var.outbound_port
    protocol    = "-1"
    cidr_blocks = var.allowed_cidr_blocks
  }

  tags = merge(local.common_tags, {
    Name = local.rds_sg_name
  })
}

# Create Security Group for ALB
resource "aws_security_group" "alb_sg" {
  name        = local.alb_sg_name
  description = "Security group for ALB"
  vpc_id      = data.aws_ssm_parameter.vpc_id.value
  ingress {
    description = "Allow HTTPS traffic to ALB"
    from_port   = var.alb_https_port
    to_port     = var.alb_https_port
    protocol    = var.protocol
    cidr_blocks = var.allowed_cidr_blocks
  }

  egress {
    description = "Allow all traffic to anywhere"
    from_port   = var.outbound_port
    to_port     = var.outbound_port
    protocol    = "-1"
    cidr_blocks = var.allowed_cidr_blocks
  }

  tags = merge(local.common_tags, {
    Name = local.alb_sg_name
  })
}

# Create Security Group for Bastion Host
resource "aws_security_group" "admin_sg" {
  name        = local.bastion_sg_name
  description = "Security group for Bastion Host"
  vpc_id      = data.aws_ssm_parameter.vpc_id.value

  egress {
    description = "Allow traffic to anywhere"
    from_port   = var.outbound_port
    to_port     = var.outbound_port
    protocol    = "-1"
    cidr_blocks = var.allowed_cidr_blocks
  }
}

# Create Security Group for Kafka
resource "aws_security_group" "kafka_sg" {
  name        = local.kafka_sg_name
  description = "Security group for Kafka"
  vpc_id      = data.aws_ssm_parameter.vpc_id.value
  ingress {
    description = "Allow traffic from anywhere"
    from_port   = var.kafka_port
    to_port     = var.kafka_port
    protocol    = var.protocol
    cidr_blocks = var.allowed_cidr_blocks
  }

  egress {
    description = "Allow all traffic to anywhere"
    from_port   = var.outbound_port
    to_port     = var.outbound_port
    protocol    = "-1"
    cidr_blocks = var.allowed_cidr_blocks
  }

  tags = merge(local.common_tags, {
    Name = local.kafka_sg_name
  })
}


# Create Security Group for ElastiCache
resource "aws_security_group" "elasticache_sg" {
  name        = local.elasticache_sg_name
  description = "Security group for ElastiCache"
  vpc_id      = data.aws_ssm_parameter.vpc_id.value
  ingress {
    description = "Allow traffic from anywhere"
    from_port   = var.elasticache_port
    to_port     = var.elasticache_port
    protocol    = var.protocol
    cidr_blocks = var.allowed_cidr_blocks
  }
  egress {
    description = "Allow all traffic to anywhere"
    from_port   = var.outbound_port
    to_port     = var.outbound_port
    protocol    = "-1"
    cidr_blocks = var.allowed_cidr_blocks
  }
  tags = merge(local.common_tags, {
    Name = local.elasticache_sg_name
  })
}