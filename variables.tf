# Project Name
variable "project_name" {
  description = "Name of the project"
  type        = string
}

# Owner of the resource
variable "owner" {
  description = "Owner of the resource"
  type        = string
}

# AWS Region
variable "region" {
  description = "AWS region to deploy resources"
  type        = string
}

# Environment
variable "environment" {
  description = "Environment name"
  type        = string
}

# Resource Manager
variable "managed_by" {
  description = "Managed by information"
  type        = string
}

# VPC CIDR Block
variable "vpc_cidr" {
  description = "VPC CIDR Block"
  type        = string
}

# Allowed CIDR Blocks
variable "allowed_cidr_blocks" {
  description = "Allowed CIDR Blocks"
  type        = list(string)
}

# Public Route
variable "public_route_table_destination_cidr" {
  description = "Destination CIDR block for public subnet route table"
  type        = string
}

# Availability Zones Count
variable "availability_zones_count" {
  description = "Number of availability zones"
  type        = number
}

# SSH Port
variable "ssh_port" {
  description = "SSH port for EC2 instances"
  type        = number
}

# RDS Port
variable "rds_port" {
  description = "RDS port for RDS instances"
  type        = number
}

# Outbound Port
variable "outbound_port" {
  description = "Outbound port for security group rules"
  type        = number
}

# Protocol
variable "protocol" {
  description = "Protocol for security group rules"
  type        = string
}

# ALB HTTPS Port
variable "alb_https_port" {
  description = "HTTPS port for ALB"
  type        = number
}

# ALB Type
variable "alb_type" {
  description = "Type of the ALB"
  type        = string
}

# Health Check Port
variable "health_check_port" {
  description = "Port for health check"
  type        = number
}

# Health Check Protocol
variable "health_check_protocol" {
  description = "Protocol for health check"
  type        = string
}

# Redirect Port
variable "redirect_port" {
  description = "Port for redirecting HTTP to HTTPS"
  type        = number
}

# Traffic Port
variable "traffic_port" {
  description = "Port for traffic"
  type        = number
}

# Test Port
variable "test_port" {
  description = "Test port for ALB listener"
  type        = number
}

# Test Protocol
variable "test_protocol" {
  description = "Test protocol for ALB listener"
  type        = string
}

# Traffic Protocol
variable "traffic_protocol" {
  description = "Protocol for traffic"
  type        = string
}

# DB Instance Class
variable "db_instance_class" {
  description = "DB instance class"
  type        = string
}

# DB Storage Size
variable "db_storage_size" {
  description = "DB storage size in GB"
  type        = number
}

# DB Engine
variable "db_engine" {
  description = "DB engine"
  type        = string
}

# DB Username
variable "db_username" {
  description = "Username for the database"
  type        = string
}

# SSM Full Access Policy ARN
variable "ssm_fullaccess_policy_arn" {
  description = "Amazon SSM Full Access policy ARN"
  type        = string
}

# SSM Maintenance Window Policy ARN
variable "ssm_maintenance_window_policy_arn" {
  description = "Amazon SSM Maintenance policy ARN"
  type        = string
}

# SSM Managed Instance Core Policy ARN
variable "ssm_managed_instance_core_policy_arn" {
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
variable "ec2_full_access_policy_arn" {
  description = "EC2 access policy ARN"
  type        = string
}

# RDS Access Policy ARN
variable "rds_full_access_policy_arn" {
  description = "RDS access policy ARN"
  type        = string
}

# EC2 Instance type
variable "ec2_instance_type" {
  description = "EC2 instance type"
  type        = string
}

# EC2 Instance Count
variable "ec2_instance_count" {
  description = "Number of EC2 instances"
  type        = number
}

# EC2 Instance Profile
variable "iam_instance_profile" {
  description = "IAM instance profile for the EC2 instance"
  type        = string
}

# Elasticache Node Type
variable "elasticache_node_type" {
  description = "Node type for the cluster"
  type        = string
}

# Parameter Group Name
variable "elasticache_parameter_group_name" {
  description = "Parameter group name for the cluster"
  type        = string
}

# Kafka Version
variable "kafka_version" {
  description = "Engine version for the cluster"
  type        = string
}

# AWS ElastiCache Engine
variable "elasticache_engine" {
  description = "Cluster engine for the ElastiCache cluster"
  type        = string
}

# ElastiCache Port
variable "elasticache_port" {
  description = "Port for the ElastiCache cluster"
  type        = number
}

# Kafka Port
variable "kafka_port" {
  description = "Kafka port"
  type        = number
}

# Kafka Instance Type
variable "kafka_instance_type" {
  description = "Kafka instance type"
  type        = string
}

# DB name
variable "db_name" {
  description = "Database name"
  type        = string
}