variable "description" {
  description = "The description assigned to the github repository."
  type        = string
  nullable    = false
}

variable "has_issues" {
  description = "Enable the GitHub Issues features on the repository."
  type        = bool
  default     = true
}

variable "include_branches" {
  description = "Turns on and off including the templated repository branches on and off"
  type        = bool
  default     = false
}

variable "organization" {
  description = "The name of the github organization"
  type        = string
  default     = "mymadlab"
}

variable "product" {
  description = "Name of the product part of the determining the name of the repo template."
  type        = string
  nullable    = false
}

variable "repo_admin" {
  description = "User ID to add as an additional admin"
  type        = string
  default     = "biggiebk"
}

variable "repo_name" {
  description = "The name of the github repository."
  type        = string
  nullable    = false
}

variable "repo_type" {
  description = "Type used to determine the name of the template repo to use."
  type        = string
  nullable    = false
}

variable "visibility" {
  description = "Sets the visibility of the repository (public|private)."
  type        = string
  nullable    = false
}

variable "wiki" {
  description = "Turn the wiki feature on or off"
  type        = bool
  default     = false
}
