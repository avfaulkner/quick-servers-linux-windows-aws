module "quick-server-linux" {
  source = "../module"

  ami = var.ami
  aws_account = var.aws_account
  instance_name = var.instance_name
  instance_type = var.instance_type
  marketplace_ami_name = var.marketplace_ami_name
  public_key = var.public_key
  quick-server_cidr_blocks = var.quick-server_cidr_blocks
  region = var.region
  root_vol_size = var.root_vol_size
  ssh_cidr_blocks = var.ssh_cidr_blocks
}