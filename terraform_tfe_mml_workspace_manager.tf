module "terraform_tfe_mml_workspace_manager" {
  source  = "app.terraform.io/mymadlab/mml_module_builder/tfe"
  version = "~> 0.1.0"

  name              = join("-", ["terraform-tfe", "mml_workspace_manager"])
  description       = "Manage Terraform Cloud Workspaces"
  tfe_org           = var.tfe_org
  github_org        = var.github_org
  vcs_provider_name = var.vcs_provider_name

}
