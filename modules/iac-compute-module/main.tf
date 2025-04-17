### Admin EC2 Instance
resource "aws_instance" "admin" {
  ami                  = data.aws_ami.ubuntu.id
  instance_type        = var.ec2_instance_type
  subnet_id            = split(",", data.aws_ssm_parameter.private_subnet_ids.value)[0]
  iam_instance_profile = data.aws_iam_instance_profile.admin_profile.name
  security_groups      = [data.aws_ssm_parameter.admin_sg_id.value]

  lifecycle {
    ignore_changes = [
      security_groups]
  }
  
  tags = merge(local.common_tags,
    {
      Name = "${local.admin_server_name}"
  })
}

