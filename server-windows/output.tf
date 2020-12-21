output "quick-server_instance" {
  value = module.quick-server-linux.quick-server_instance
}

output "ami" {
  value = var.ami
}

output "iam_role_s3_access" {
  value = module.quick-server-linux.iam_role_s3_access
}

output "instance_profile" {
  value = module.quick-server-linux.instance_profile
}

output "iam_policy_s3_access" {
  value = module.quick-server-linux.iam_policy_s3_access
}

output "security_group" {
  value = module.quick-server-linux.security_group
}

output "vpc" {
  value = module.quick-server-linux.vpc
}