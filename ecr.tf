module "ecr" {
  source  = "terraform-aws-modules/ecr/aws"
  version = "2.2.0"

  create_repository = var.ecr_create_repository
  repository_name = var.ecr_repository_name == "" ? "ecr-${local.name_string}" : var.ecr_repository_name
  repository_type = var.ecr_repository_type
  repository_read_write_access_arns = var.ecr_repository_read_write_access_arns
  repository_read_access_arns = var.ecr_repository_read_access_arns
  repository_encryption_type = var.ecr_repository_encryption_type

  repository_image_scan_on_push = var.ecr_repository_image_scan_on_push
  repository_image_tag_mutability = var.ecr_repository_image_tag_mutability

  manage_registry_scanning_configuration = var.ecr_manage_registry_scanning_configuration
  registry_scan_type = var.ecr_registry_scan_type
  registry_scan_rules = var.ecr_registry_scan_rules

  tags = var.resources_tags

}

