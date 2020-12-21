variable "owner" {
  default     = ""
  description = "owner of the resource"
}

variable "region" {
  description = "Region to place the infrastructure"
}

variable "aws_profile" {
  description = "The AWS Credential Profile to use"
  default     = "default"
}

# Server
variable "instance_type" {
  description = "Type of instance to use for server"
}

variable "root_vol_size" {
  description = "Disk volume size"
}

variable "ami" {
  description = "Specific ami to use"
}

variable "instance_name" {
  description = "Name tag given to instance"
}

variable "ssh_cidr_blocks" {
  description = "Allows list members to access the instance via ssh"
  type        = list(string)
}

variable "aws_account" {
  description = "Canonical name of AWS account"
}

variable "public_key" {
  description = "Public key to used in ssh key pair"
}

variable "marketplace_ami_name" {
  description = "Name of AMI in AWS Marketplace"
}

variable "ssh_port" {
  description = "SSH port into the server"
}

variable "https_port" {
  description = "HTTPS inbound to the server"
}

variable "http_port" {
  description = "HTTP inbound to the server"
}

variable "https_inbound_cidr_block" {
  description = "Allows list members to have HTTPS access to web interface, if applicable"
  type        = list(string)
}