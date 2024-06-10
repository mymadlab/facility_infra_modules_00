output "name" {
  description = "Name of the repository"
  value       = resource.github_repository.repository.name
}

output "workspace_id" {
  description = "ID of the repository"
  value       = resource.github_repository.repository.id
}
