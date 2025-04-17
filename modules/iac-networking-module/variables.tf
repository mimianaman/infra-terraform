# Terraform Variables for Networking Module

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

# VPC CIDR Block
variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
}

#Allowed CIDR Blocks
variable "allowed_cidr_blocks" {
  description = "List of allowed CIDR blocks for ALB access"
  type        = list(string)
}

# Public Route
variable "public_route_table_destination_cidr" {
  description = "Destination CIDR block for public subnet route table"
  type        = string
}

# Availability Zones Count
variable "availability_zones_count" {
  description = "Number of AZs to use"
  type        = number
}




