module "terraform_github_mml_repository_manager" {
#  source  = "app.terraform.io/mymadlab/mml_module_builder/tfe"
#  version = "~> 0.1.0"
  source  = "./modules/mml_module_builder"

  name              = join("-", ["terraform-github", "mml_repository_manager"])
  description       = "Workspace for managing Github repositories"
  tfe_org           = var.tfe_org
  github_org        = var.github_org
  vcs_provider_name = var.vcs_provider_name

}

import {
  to = module.terraform_github_mml_repository_manager.module.github_repository_manager.github_branch_protection.main
  id = "terraform-github-mml_repository_manager:main"
}
