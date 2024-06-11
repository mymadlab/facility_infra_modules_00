module "terraform_tfe_mml_module_manager" {
  source  = "app.terraform.io/mymadlab/mml_module_builder/tfe"
  version = "~>0.2.0"

  name              = join("-", ["terraform-tfe", "mml_module_manager"])
  description       = "Workspace for managing tfe modules"
  tfe_org           = var.tfe_org
  github_org        = var.github_org
  vcs_provider_name = var.vcs_provider_name

}
