# Create and configure workspaces
resource "null_resource" "workspace_setup" {
  provisioner "local-exec" {
    command = <<-EOT
      terraform workspace select -or-create dev 2>nul || exit 0
      terraform workspace select -or-create prod 2>nul || exit 0
    EOT
  }
}

# Validate workspace
#ocals {
#allowed_workspaces = ["dev", "prod"]

#validate_workspace = (
# contains(local.allowed_workspaces, terraform.workspace)
#? null
#: file("ERROR: Invalid workspace. Must be one of: ${join(", ", local.allowed_workspaces)}")
#)
#}

locals {
  allowed_workspaces = ["dev", "prod"]

  validate_workspace = contains(local.allowed_workspaces, terraform.workspace) ? true : false
}

# Throw an error if the workspace is invalid
resource "null_resource" "validate_workspace" {
  count = local.validate_workspace ? 0 : 1

  provisioner "local-exec" {
    command = "echo Invalid workspace '${terraform.workspace}'. Must be one of: ${join(", ", local.allowed_workspaces)} && exit 1"
  }
}


