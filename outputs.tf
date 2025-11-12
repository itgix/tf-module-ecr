################################################################################
# Private Repository
################################################################################
output "repository_names" {
  description = "List of ECR repository names"
  value       = [for k, m in module.ecr : m.repository_name]
}

output "repository_urls" {
  description = "List of ECR repository URLs (registry/repository)"
  value       = [for k, m in module.ecr : m.repository_url]
}