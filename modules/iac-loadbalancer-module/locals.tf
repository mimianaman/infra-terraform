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
  alb_name             = "${local.name_prefix}-alb"
  target_group_name    = "${local.name_prefix}-tg"
  alb_logs_bucket_name = "${local.name_prefix}-alb-logs"
} 