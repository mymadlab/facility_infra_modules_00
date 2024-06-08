terraform {
  cloud {
    organization = "mymadlab"
    workspaces {
      tags = []
    }
  }

  required_providers {
    #    provider1 = {
    #      source  = "owner/provider1"
    #      version = "~> #.#.#"
    #    }
  }

  required_version = "~> 1.7.5"

}

#provider "provider1" {

#}
