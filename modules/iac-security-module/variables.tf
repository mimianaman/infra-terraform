# Variables for Security Module

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

# RDS Port
variable "rds_port" {
  description = "Port for RDS instance"
  type        = number
}

# Outbound Port
variable "outbound_port" {
  description = "Outbound port for security group"
  type        = number
}

# Protocol
variable "protocol" {
  description = "Protocol for security group rules"
  type        = string
  default     = "tcp"
}

# Allowed CIDR Blocks
variable "allowed_cidr_blocks" {
  description = "Allowed CIDR blocks for security group rules"
  type        = list(string)
}

# ALB HTTPS Port
variable "alb_https_port" {
 description = "HTTPS port for ALB"
  type        = number
}

# ALB SSH Port
variable "ssh_port" {
  description = "SSH port for ALB"
  type        = number
}

# ElastiCache Port
variable "elasticache_port" {
  description = "ElastiCache port"
  type        = number
}

# Kafka Port
variable "kafka_port" {
  description = "Kafka port"
  type        = number
}