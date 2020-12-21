owner         = "" # your name
aws_account = "" # aws 12 digit account number without dashes
region        = "ca-central-1"
aws_profile   = "" # add the file path to the aws credentials or leave blank and export them to the env
instance_type = "t2.xlarge"
root_vol_size = 64
instance_name = "quick-server"
ssh_cidr_blocks = [
  "" # Place appropriate cidr blocks as a list of strings here
]
# Place cidr blocks which have HTTPS access to web interface, if applicable"
https_inbound_cidr_block = [
  "" # Place appropriate cidr blocks as a list of strings here
]

# Add the public ssh key material as a string:
public_key = "" # key starting with ssh-rsa...

# Add one of the following (priority is given to the ami variable):
ami = "" #  base ami for your chosen region

# IMPORTANT: See this link for quick-server AMIs for other regions: https://wiki.quick-server.org/Cloud/AWS
marketplace_ami_name = "ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"

ssh_port = 22
https_port = 443
http_port = 80