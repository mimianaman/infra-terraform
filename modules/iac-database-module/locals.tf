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
  db_name              = "${local.name_prefix}-db"
  db_instance_name     = "${local.name_prefix}-db-instance"
  db_subnet_group_name = "${local.name_prefix}-db-subnet-group"
  secret_name          = "${local.name_prefix}-secret-payjack"
  secret_rotation_name = "${local.name_prefix}-db-secret-rotation"
  db_identifier        = "${local.name_prefix}-db-instance"
}

# Local variables for DB Credentials
locals {
  db_creds = jsondecode(data.aws_secretsmanager_secret_version.db_creds.secret_string)

  depends_on = [aws_secretsmanager_secret_version.rds]
}