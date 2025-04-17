# Create A Secret Manager for RDS Credentials
resource "aws_secretsmanager_secret" "rds" {
  name        = local.secret_name
  description = "RDS credentials for ${local.db_name}"

  tags = merge(
    local.common_tags,
    {
      Name = "${local.db_name}-secret"
  })
}

# Create a Secret Version for RDS Credentials
resource "aws_secretsmanager_secret_version" "rds" {
  secret_id = aws_secretsmanager_secret.rds.id

  secret_string = jsonencode({
    username = var.db_username
    password = random_password.rds.result
  })
}