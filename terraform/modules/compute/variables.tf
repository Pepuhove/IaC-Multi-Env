variable "instance_name" {
  description = "The name tag for the EC2 instance"
  type        = string
}

variable "ami_id" {
  description = "The AMI ID to use for the EC2 instance"
  type        = string
}

variable "instance_type" {
  description = "The type of instance to start (e.g., t3.micro)"
  type        = string
  default     = "t3.micro" # Providing a default is a good practice
}

variable "key_pair_name" {
  description = "The name of an existing EC2 Key Pair to use for SSH access"
  type        = string
}

variable "subnet_id" {
  description = "The VPC Subnet ID to launch the instance in"
  type        = string
}

variable "vpc_security_group_ids" {
  description = "A list of security group IDs to associate with the instance"
  type        = list(string)
}

# You can add an environment tag if you want, or just let the root module handle naming.
variable "environment" {
  description = "The environment name (e.g., dev, stage, prod) for tagging"
  type        = string
  default     = ""
}