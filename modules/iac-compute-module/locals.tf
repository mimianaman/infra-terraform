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
  instance_name     = "${local.name_prefix}-app-server"
  admin_server_name = "${local.name_prefix}-admin-server"
  asg_name          = "${local.name_prefix}-asg"
} 