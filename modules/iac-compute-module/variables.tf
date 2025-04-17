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


# EC2 Specific Variables
variable "ec2_instance_count" {
  description = "Number of EC2 instances"
  type        = number
}


# Instance Type
variable "ec2_instance_type" {
  description = "Instance type for the EC2 instance"
  type        = string
}

# EC2 Instance Profile
variable "iam_instance_profile" {
  description = "IAM instance profile for the EC2 instance"
  type        = string
}