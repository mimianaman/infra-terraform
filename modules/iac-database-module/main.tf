# Create a MySQL RDS instance in a VPC with a security group and subnet group

# Create Subnet Group
resource "aws_db_subnet_group" "rds" {
  name       = local.db_subnet_group_name
  subnet_ids = split(",", data.aws_ssm_parameter.private_subnet_ids.value)
}

# Create DB Instance
resource "aws_db_instance" "rds" {
  allocated_storage      = var.db_storage_size
  engine                 = var.db_engine
  identifier = local.db_identifier
  instance_class         = var.db_instance_class
  username               = local.db_creds.username
  password               = local.db_creds.password
  db_name                = var.db_name
  skip_final_snapshot    = terraform.workspace == "prod" ? false : true
  multi_az               = terraform.workspace == "prod" ? true : false
  vpc_security_group_ids = [data.aws_ssm_parameter.rds_sg_id.value]
  db_subnet_group_name   = aws_db_subnet_group.rds.name

  tags = merge(
    local.common_tags,
    {
      Name = "${local.db_name}"
  })
}