output "instance_name" {
  description = "The name of the EC2 instance"
  value       = module.dev_webserver.instance_name 
}

output "workspace_name" {
  description = "The current Terraform workspace"
  value       = terraform.workspace
}

output "public_ip" {
  description = "Public IP of my instance"
  value       = module.dev_webserver.public_ip
}