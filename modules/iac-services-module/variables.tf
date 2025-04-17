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

# Elasticache Node Type
variable "elasticache_node_type" {
  description = "Node type for the cluster"
  type        = string
}

variable "parameter_group_name" {
  description = "Parameter group name for the cluster"
  type        = string
}

variable "kafka_version" {
  description = "Engine version for the cluster"
  type        = string
}

# Kafka Instance Type
variable "kafka_instance_type" {
  description = "Kafka instance type"
  type        = string
}

variable "elasticache_engine" {
  description = "Cluster ID for the ElastiCache cluster"
  type        = string
}

variable "elasticache_port" {
  description = "Port for the ElastiCache cluster"
  type        = number
}

# Availability Zones Count
variable "availability_zones_count" {
  description = "Number of AZs to use"
  type        = number
}