# mml_workspace_manager

## Description

Responsible for creating (uses clones), updating, and deleting github repositories.

## Usage

```HCL
module "github_repository_manager" {
  source  = "app.terraform.io/mymadlab/mml_repository_manager/github"
  version = "~> 0.1.0"

  repo_name   = "name_of_repository"
  description = "description of repository"
  visibility  = "public"
  wiki        = true
  repo_type   = "module" # Type for clone of the repo
  product     = "terraform" # Product for clone of the repo
}

```

## Dependencies

- [integrations/github](https://registry.terraform.io/providers/integrations/github/latest): >=6.0.1
