output "quick-server_instance" {
  value = {
    instance_name = var.instance_name
    id            = aws_instance.quick-server.id
    private_ip    = aws_instance.quick-server.private_ip

    private_dns = aws_instance.quick-server.private_dns

    public_ip = aws_eip.quick-server-eip.public_ip
  }
}

output "ami" {
  value = data.aws_ami.quick-server.id
}

output "iam_role_s3_access" {
  value = aws_iam_role.role.id
}

output "instance_profile" {
  value = aws_iam_instance_profile.quick-server_s3_access.id
}

output "iam_policy_s3_access" {
  value = aws_iam_policy.ec2_policy.id
}

output "security_group" {
  value = aws_security_group.quick-server-sg.id
}

output "key_pair" {
  value = aws_key_pair.ssh-key.id
}

output "vpc" {
  value = aws_vpc.quick-server.id
}