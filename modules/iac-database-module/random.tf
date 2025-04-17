# Create a random password for RDS
resource "random_password" "rds" {
  length           = 16
  special          = true
  upper            = true
  lower            = true
  numeric          = true
  override_special = "_%@"
}