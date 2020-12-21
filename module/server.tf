resource "aws_key_pair" "ssh-key" {
  key_name   = "quick-server-key"
  public_key = var.public_key

  tags = {
    "Name" = "{var.owner}-quick-server ssh key"
  }
}

resource "aws_instance" "quick-server" {
  ami           = var.ami != "" ? var.ami : data.aws_ami.quick-server.id
  ebs_optimized = false
  instance_type = var.instance_type
  monitoring    = true
  key_name      = aws_key_pair.ssh-key.id
  subnet_id     = aws_subnet.subnet-public.id
  availability_zone = "${var.region}a"
  iam_instance_profile = aws_iam_instance_profile.quick-server_s3_access.id


  vpc_security_group_ids = [
    aws_security_group.quick-server-sg.id,
  ]

  tags = {
    Name = "{var.owner}-{var.instance_name}"
  }

  root_block_device {
    volume_type = "gp2"
    volume_size = var.root_vol_size
  }
}

resource "aws_eip" "quick-server-eip" {
  vpc      = true
  instance = aws_instance.quick-server.id

  tags = {
    Name = "{var.owner}quick-server-eip"
  }

}