resource "aws_msk_cluster" "kafka" {
  cluster_name           = local.cluster_name
  kafka_version          = var.kafka_version
  number_of_broker_nodes = var.availability_zones_count

  broker_node_group_info {
    instance_type   = var.kafka_instance_type
    client_subnets  = split(",", data.aws_ssm_parameter.private_subnet_ids.value)
    security_groups = [data.aws_ssm_parameter.kafka_sg_id.value]
  }
}

resource "aws_elasticache_cluster" "redis" {
  cluster_id           = local.redis_cluster_id
  engine               = var.elasticache_engine
  node_type            = var.elasticache_node_type
  num_cache_nodes      = 1
  parameter_group_name = var.parameter_group_name
  port                 = var.elasticache_port
  subnet_group_name    = aws_elasticache_subnet_group.redis.name
  security_group_ids   = [data.aws_ssm_parameter.elasticache_sg_id.value]
}

resource "aws_elasticache_subnet_group" "redis" {
  name       = local.subnet_group_name
  subnet_ids = split(",", data.aws_ssm_parameter.private_subnet_ids.value)
  tags = merge(local.common_tags,
    {
      Name = "${local.subnet_group_name}"
  })
  depends_on = [data.aws_ssm_parameter.private_subnet_ids]

  lifecycle {
    create_before_destroy = true
  }
}