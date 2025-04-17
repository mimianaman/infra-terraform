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

# ALB Type
variable "alb_type" {
  description = "Type of the ALB"
  type        = string
}

# ALB HTTPS Port
variable "alb_https_port" {
  description = "HTTPS port for ALB"
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