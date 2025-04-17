
# Create a storage bucket
module "storage" {
  source       = "./modules/iac-storage-module"
  environment  = var.environment
  project_name = var.project_name
  managed_by   = var.managed_by
  owner        = var.owner
  region       = var.region
}

# Create Networking Environment
module "networking" {
  source                              = "./modules/iac-networking-module"
  vpc_cidr                            = var.vpc_cidr
  public_route_table_destination_cidr = var.public_route_table_destination_cidr
  allowed_cidr_blocks                 = var.allowed_cidr_blocks
  availability_zones_count            = var.availability_zones_count
  environment                         = var.environment
  project_name                        = var.project_name
  managed_by                          = var.managed_by
  owner                               = var.owner
  region                              = var.region
}

# Create Security Module
module "security" {
  source              = "./modules/iac-security-module"
  ssh_port            = var.ssh_port
  rds_port            = var.rds_port
  alb_https_port = var.alb_https_port
  elasticache_port    = var.elasticache_port
  kafka_port          = var.kafka_port
  outbound_port       = var.outbound_port
  allowed_cidr_blocks = var.allowed_cidr_blocks
  environment         = var.environment
  project_name        = var.project_name
  managed_by          = var.managed_by
  owner               = var.owner
  region              = var.region

  depends_on = [module.networking]
}

# Create Load Balancer Module
module "load_balancer" {
  source                = "./modules/iac-loadbalancer-module"
  alb_type              = var.alb_type
  health_check_port     = var.health_check_port
  health_check_protocol = var.health_check_protocol
  redirect_port         = var.redirect_port
  test_port             = var.test_port
  test_protocol         = var.test_protocol
  traffic_port          = var.traffic_port
  traffic_protocol      = var.traffic_protocol
  alb_https_port        = var.alb_https_port
  environment           = var.environment
  project_name          = var.project_name
  managed_by            = var.managed_by
  owner                 = var.owner
  region                = var.region

  depends_on = [module.networking, module.security]
}

# Create Database Module
module "database" {
  source            = "./modules/iac-database-module"
  db_instance_class = var.db_instance_class
  db_name           = var.db_name
  db_engine         = var.db_engine
  db_storage_size   = var.db_storage_size
  db_username       = var.db_username
  environment       = var.environment
  project_name      = var.project_name
  managed_by        = var.managed_by
  owner             = var.owner
  region            = var.region

  depends_on = [module.networking, module.security]
}

# Create IAM Module
module "iam" {
  source                                   = "./modules/iac-iam-module"
  rds_access                               = var.rds_full_access_policy_arn
  ec2_access                               = var.ec2_full_access_policy_arn
  iam_ssm_fullaccess_policy_arn            = var.ssm_fullaccess_policy_arn
  iam_ssm_maintenance_window_policy_arn    = var.ssm_maintenance_window_policy_arn
  iam_ssm_managed_instance_core_policy_arn = var.ssm_managed_instance_core_policy_arn
  iam_ec2_ssm_policy_arn                   = var.iam_ec2_ssm_policy_arn
  aws_budgets_actions_with_ssm_policy_arn  = var.aws_budgets_actions_with_ssm_policy_arn
  environment                              = var.environment
  project_name                             = var.project_name
  managed_by                               = var.managed_by
  owner                                    = var.owner
  region                                   = var.region
}

# Create Compute Module
module "compute" {
  source                                = "./modules/iac-compute-module"
  region = var.region
  ec2_instance_type                     = var.ec2_instance_type
  iam_instance_profile                  = var.iam_instance_profile
  project_name = var.project_name
  managed_by = var.managed_by
  owner = var.owner
  environment = var.environment
  ec2_instance_count = var.ec2_instance_count

  depends_on = [module.networking, module.security]
}

# Create Services Module
module "services" {
  source               = "./modules/iac-services-module"
  elasticache_engine   = var.elasticache_engine
  elasticache_port     = var.elasticache_port
  kafka_version        = var.kafka_version
  kafka_instance_type = var.kafka_instance_type
  availability_zones_count = var.availability_zones_count
  elasticache_node_type = var.elasticache_node_type
  parameter_group_name = var.elasticache_parameter_group_name
  environment          = var.environment
  project_name         = var.project_name
  managed_by           = var.managed_by
  owner                = var.owner
  region               = var.region

  depends_on = [module.networking, module.security]
}