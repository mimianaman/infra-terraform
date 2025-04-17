# Local varibales for Naming conventions

locals {
  # Naming convention for resources
  name_prefix = "${var.project_name}-${terraform.workspace}-${var.region}"

  # Common tags for all resources
  common_tags = {
    Environment = terraform.workspace
    Managed_by  = var.managed_by
    Owner       = var.owner
    Project     = "${var.project_name}"
  }
}

# Local variables for resource names
locals {
  rds_sg_name         = "${local.name_prefix}-rds-sg"
  alb_sg_name         = "${local.name_prefix}-alb-sg"
  asg_sg_name         = "${local.name_prefix}-asg-sg"
  bastion_sg_name     = "${local.name_prefix}-admin-sg"
  kafka_sg_name       = "${local.name_prefix}-kafka-sg"
  elasticache_sg_name = "${local.name_prefix}-elasticache-sg"
}