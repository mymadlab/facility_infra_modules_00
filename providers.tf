terraform {
  cloud {
    organization = "mymadlab"
    workspaces {
      tags = ["facility", "infra", "facility_infra_modules_00"]
    }
  }
  required_providers {
    tfe = {
      source  = "hashicorp/tfe"
      version = "~> 0.52.0"
    }
    github = {
      source  = "integrations/github"
      version = "~> 6.2.0"
    }
  }

  required_version = "~> 1.7.5"

}

provider "tfe" {
  token = var.tfe_token
}

provider "github" {
  token = var.github_token
}
