# Create IAM roles and policies for EC2 instances
# This module creates IAM roles and policies for EC2 instances

# Create Admin Role
resource "aws_iam_role" "admin_role" {
  name               = "admin-ssm-role"
  assume_role_policy = data.aws_iam_policy_document.ec2_assume_role.json
}

# Attach AWS-managed policies
resource "aws_iam_role_policy_attachment" "admin_managed_ssm" {
  for_each = toset([
    var.iam_ssm_fullaccess_policy_arn,
    var.iam_ssm_maintenance_window_policy_arn,
    var.iam_ssm_managed_instance_core_policy_arn,
    var.iam_ec2_ssm_policy_arn,
    var.aws_budgets_actions_with_ssm_policy_arn,
  ])

  role       = aws_iam_role.admin_role.name
  policy_arn = each.value
}

# Create instance profile for the admin role
resource "aws_iam_instance_profile" "admin_profile" {
  name = local.admin_profile_name
  role = aws_iam_role.admin_role.name
}

# Create IAM role for application servers
resource "aws_iam_role" "app_role" {
  name               = local.app_role_name
  assume_role_policy = data.aws_iam_policy_document.ec2_assume_role.json
}

# Inline policy: S3 (custom policy)
resource "aws_iam_policy" "app_s3_policy" {
  name   = local.app_s3_policy_name
  policy = file("${path.root}/policies/app-permission.json")
}

resource "aws_iam_role_policy_attachment" "app_attach_s3" {
  role       = aws_iam_role.app_role.name
  policy_arn = aws_iam_policy.app_s3_policy.arn
}

# Attach AmazonEC2FullAccess and AmazonRDSFullAccess
resource "aws_iam_role_policy_attachment" "app_attach_managed" {
  for_each = toset([
    var.ec2_access,
    var.rds_access
  ])

  role       = aws_iam_role.app_role.name
  policy_arn = each.value
}

resource "aws_iam_instance_profile" "app_profile" {
  name = local.app_profile_name
  role = aws_iam_role.app_role.name
}