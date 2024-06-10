locals {
  repo_template_name = join("-", ["TPLREPO", var.product, var.repo_type])
}
