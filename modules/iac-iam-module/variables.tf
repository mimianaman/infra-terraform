# Region
variable "region" {
  description = "AWS region to deploy resources"
  type        = string
}

# Managed By
variable "managed_by" {
  description = "Managed by information"
  type        = string
}

# Owner
variable "owner" {
  description = "Owner information"
  type        = string
}

# Environment
variable "environment" {
  description = "Environment name"
  type        = string
}

# Project Name
variable "project_name" {
  description = "Project name"
  type        = string
}

# SSM Full Access Policy ARN
variable "iam_ssm_fullaccess_policy_arn" {
  description = "Amazon SSM Full Access policy ARN"
  type        = string
}

# SSM Maintenance Window Policy ARN
variable "iam_ssm_maintenance_window_policy_arn" {
  description = "Amazon SSM Maintenance policy ARN"
  type        = string
}

# SSM Managed Instance Core Policy ARN
variable "iam_ssm_managed_instance_core_policy_arn" {
  description = "Amazon SSM Managed Instance Core policy ARN"
  type        = string
}

# EC2 SSM Policy ARN
variable "iam_ec2_ssm_policy_arn" {
  description = "Amazon EC2 Role for SSM policy ARN"
  type        = string
}

# AWS Budgets Actions Role Policy for Resource Administration with SSM ARN
variable "aws_budgets_actions_with_ssm_policy_arn" {
  description = "AWS Budgets Actions Role Policy for Resource Administration with SSM ARN"
  type        = string
}

# EC2 Access Policy ARN
variable "ec2_access" {
  description = "EC2 access policy ARN"
  type        = string
}

# RDS Access Policy ARN
variable "rds_access" {
  description = "RDS access policy ARN"
  type        = string
}