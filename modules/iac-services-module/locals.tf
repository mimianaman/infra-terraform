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
  cluster_name      = "${local.name_prefix}-kafka-cluster"
  redis_cluster_id  = "${local.name_prefix}-redis-cluster"
  subnet_group_name = "${local.name_prefix}-subnet-group"
} 