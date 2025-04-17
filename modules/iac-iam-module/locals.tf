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
  admin_profile_name          = "${local.name_prefix}-admin-profile"
  app_profile_name            = "${local.name_prefix}-app-profile"
  admin_role_name             = "${local.name_prefix}-admin-role"
  app_role_name               = "${local.name_prefix}-app-role"
  app_s3_policy_name          = "${local.name_prefix}-app-s3-policy"
  ec2_assume_role_policy_name = "${local.name_prefix}-ec2-assume-role-policy"
} 