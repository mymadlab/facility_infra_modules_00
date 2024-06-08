module "terraform_github_mml_repository_manager" {
  source  = "app.terraform.io/mymadlab/mml_module_builder/tfe"
  version = "~> 0.1.0"

  name              = join("-", ["terraform-github", "mml_repository_manager"])
  description       = "Workspace for managing Github repositories"
  tfe_org           = var.tfe_org
  github_org        = var.github_org
  vcs_provider_name = var.vcs_provider_name

}
