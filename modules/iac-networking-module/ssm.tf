# Store VPC and Subnet IDs in SSM

# Store VPC ID in SSM
resource "aws_ssm_parameter" "vpc_id" {
  name       = "/${local.name_prefix}/vpc_id"
  type       = "SecureString"
  value      = aws_vpc.main.id
  tags       = local.common_tags
  depends_on = [aws_vpc.main]

}

# Store Public Subnet IDs in SSM
resource "aws_ssm_parameter" "public_subnet_ids" {
  name       = "/${local.name_prefix}/public_subnet_ids"
  type       = "StringList"
  value      = join(",", aws_subnet.public[*].id)
  depends_on = [aws_subnet.public]

  tags = local.common_tags
}

# Store Private Subnet IDs in SSM
resource "aws_ssm_parameter" "private_subnet_ids" {
  name  = "/${local.name_prefix}/private_subnet_ids"
  type  = "StringList"
  value = join(",", aws_subnet.private[*].id)


  tags       = local.common_tags
  depends_on = [aws_subnet.private]
}

# Store Internet Gateway ID in SSM
resource "aws_ssm_parameter" "igw_id" {
  name       = "/${local.name_prefix}/igw_id"
  type       = "String"
  value      = aws_internet_gateway.igw.id
  depends_on = [aws_internet_gateway.igw]

  tags = local.common_tags
}

# Store Public Route Table ID in SSM
resource "aws_ssm_parameter" "public_rt_id" {
  name       = "/${local.name_prefix}/public_rt_id"
  type       = "String"
  value      = aws_route_table.public.id
  depends_on = [aws_route_table.public]

  tags = local.common_tags
}

# Store Private Route Table ID in SSM
resource "aws_ssm_parameter" "private_rt_id" {
  name       = "/${local.name_prefix}/private_rt_id"
  type       = "String"
  value      = join(",", aws_route_table.private[*].id)
  depends_on = [aws_route_table.private]

  tags = local.common_tags
}

# Store NAT Gateway ID in SSM
resource "aws_ssm_parameter" "nat_id" {
  name       = "/${local.name_prefix}/nat_id"
  type       = "String"
  value      = join(",", aws_nat_gateway.nat[*].id)
  depends_on = [aws_nat_gateway.nat]

  tags = local.common_tags
}

