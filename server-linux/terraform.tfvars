owner         = "" # your name
aws_account = "" # aws 12 digit account number without dashes
region        = ""
aws_profile   = "" # add the file path to the aws credentials or leave blank and export them to the env
instance_type = "t2.xlarge"
root_vol_size = 64
instance_name = "quick-server"
ssh_cidr_blocks = [
  "" # Place appropriate cidr blocks as a list of strings here
]
# Place any additional (non-ssh) cidr blocks here
https_inbound_cidr_block = [
  "", # Place appropriate cidr blocks as a list of strings here
]

# Add the public ssh key material as a string:
public_key = "" # key starting with ssh-rsa...

# Add one of the following (priority is given to the ami variable):
# NOTE: if ami variable is not given, marketplace_ami_name will be used !!
ami = "" #  base ami for your chosen region

# IMPORTANT: See this link for server AMIs for other regions: https://cloud-images.ubuntu.com/locator/ec2/
marketplace_ami_name = "ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"

ssh_port = 22
https_port = 443
http_port = 80