terraform {
  cloud {
    organization = "mymadlab"
  }

  required_providers {
    github = {
      source  = "integrations/github"
      version = ">= 6.2.0"
    }
  }

  required_version = ">= 1.7.5"
}
