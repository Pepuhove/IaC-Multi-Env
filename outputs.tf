# outputs.tf
output "instance_name" {
  description = "The name of the EC2 instance"
  value       = locals.instance_name
}

output "workspace_name" {
  description = "The current Terraform workspace"
  value       = terraform.workspace
}