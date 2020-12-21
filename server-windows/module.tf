module "quick-server-windows" {
  source = "../module"

  ami = var.ami
  aws_account = var.aws_account
  instance_name = var.instance_name
  instance_type = var.instance_type
  marketplace_ami_name = var.marketplace_ami_name
  public_key = var.public_key
  https_inbound_cidr_block = var.https_inbound_cidr_block
  region = var.region
  root_vol_size = var.root_vol_size
  ssh_cidr_blocks = var.ssh_cidr_blocks
  ssh_port = var.ssh_port
  https_port = var.https_port
  http_port = var.http_port
}