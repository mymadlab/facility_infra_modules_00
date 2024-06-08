variable "tfe_token" {
  description = "The terraform cloud token"
  type        = string
  nullable    = false
  sensitive   = true
}

variable "tfe_org" {
  description = "Name of the organization in terraform clould"
  type        = string
  nullable    = false
}

variable "github_token" {
  description = "The Github token"
  type        = string
  nullable    = false
  sensitive   = true
}

variable "vcs_provider_name" {
  description = "Name of the OATH VCS Provider"
  type        = string
  nullable    = false
}

variable "github_org" {
  description = "The terraform cloud token"
  type        = string
  nullable    = false
  sensitive   = true
}
