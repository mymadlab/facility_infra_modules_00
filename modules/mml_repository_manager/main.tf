resource "github_branch_protection" "main" {
  repository_id     = github_repository.repository.node_id
  enforce_admins = true
  force_push_bypassers = []
  pattern         = "main"

  required_pull_request_reviews {
    dismiss_stale_reviews =  false
    dismissal_restrictions = []
    pull_request_bypassers = []
    require_code_owner_reviews = false
    require_last_push_approval = false
    required_approving_review_count = 1
    restrict_dismissals = false
  }

}

resource "github_repository" "repository" {

  name        = var.repo_name
  description = var.description

  visibility = var.visibility
  has_wiki   = var.wiki
  has_issues = var.has_issues

  template {
    owner                = var.organization
    repository           = local.repo_template_name
    include_all_branches = var.include_branches
  }

}

resource "github_repository_collaborators" "repo_admin" {
  repository = github_repository.repository.name

  user {
    permission = "admin"
    username   = var.repo_admin
  }

}
