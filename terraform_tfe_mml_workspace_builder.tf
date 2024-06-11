module "terraform_tfe_mml_workspace_builder" {
  source  = "app.terraform.io/mymadlab/mml_module_builder/tfe"
  version = "~>0.2.0"

  name              = join("-", ["terraform-tfe", "mml_workspace_builder"])
  description       = "Responsible for building terraform workspaces"
  tfe_org           = var.tfe_org
  github_org        = var.github_org
  vcs_provider_name = var.vcs_provider_name

}
