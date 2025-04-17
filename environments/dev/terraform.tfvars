# AWS Region
region = "us-east-1"

# Project Name
project_name = "payjack"

# Owner of the resources
owner = "mimi"

# Environment name
environment = "dev"

# Managed by information
managed_by = "terraform"

# VPC CIDR Block
vpc_cidr = "10.0.0.0/16"


# Allowed CIDR Blocks
allowed_cidr_blocks = ["0.0.0.0/0"]

public_route_table_destination_cidr = "0.0.0.0/0"

# Availability Zones Count
availability_zones_count = 3

# SSH Port
ssh_port = 5000

# RDS Port
rds_port = 3306

# Outbound Port
outbound_port = 0

# Test Protocol
test_protocol = "HTTP"

# Protocol
protocol = "tcp"

# ALB HTTPS Port
alb_https_port = 443

# ALB Type
alb_type = "application"

# Health Check Port
health_check_port = 80

# Health Check Protocol
health_check_protocol = "HTTP"

# Redirect Port
redirect_port = 80

# Test Port
test_port = 80

# Traffic Port
traffic_port = 443

# Traffic Protocol
traffic_protocol = "HTTPS"


# DB Instance Class
db_instance_class = "db.t3.micro"

# DB Storage Size
db_storage_size = 20

# DB Engine
db_engine = "mysql"

# DB Username
db_username = "payjackadmin"

# SSM Full Access Policy ARN
ssm_fullaccess_policy_arn = "arn:aws:iam::aws:policy/AmazonSSMFullAccess"

# SSM Maintenance Window Policy ARN
ssm_maintenance_window_policy_arn = "arn:aws:iam::aws:policy/service-role/AmazonSSMMaintenanceWindowRole"

# SSM Managed Instance Core Policy ARN
ssm_managed_instance_core_policy_arn = "arn:aws:iam::aws:policy/AmazonSSMManagedInstanceCore"

# IAM EC2 SSM Policy ARN
iam_ec2_ssm_policy_arn = "arn:aws:iam::aws:policy/service-role/AmazonEC2RoleforSSM"

# AWS Budgets Actions with SSM Policy ARN
aws_budgets_actions_with_ssm_policy_arn = "arn:aws:iam::aws:policy/AWSBudgetsActionsWithAWSResourceControlAccess"

# EC2 Full Access Policy ARN
ec2_full_access_policy_arn = "arn:aws:iam::aws:policy/AmazonEC2FullAccess"

# RDS Full Access Policy ARN
rds_full_access_policy_arn = "arn:aws:iam::aws:policy/AmazonRDSFullAccess"

# EC2 Instance Type
ec2_instance_type = "t3.micro"

# EC2 Instance Count
ec2_instance_count = 1

# EC2 Instance Profile
iam_instance_profile = "my_instance_profile"

# Parameter Group Name
elasticache_parameter_group_name = "default.redis7"

# Kafka Version
kafka_version = "2.8.0"

# AWS ElastiCache Engine
elasticache_engine = "redis"

# Elasticache Port
elasticache_port = 6379

# Elasticache Node Type
elasticache_node_type = "cache.t3.medium"

# Kafka Port
kafka_port = 9092

# Kafka Instance Type
kafka_instance_type = "kafka.t3.small"

# DB Username
db_name = "payjackdb"