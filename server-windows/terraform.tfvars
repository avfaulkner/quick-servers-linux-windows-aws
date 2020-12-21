owner         = "" # your name
aws_account = "" # aws 12 digit account number without dashes
region        = "us-east-2"
aws_profile   = "" # add the file path to the aws credentials or leave blank and export them to the env
instance_type = "t2.xlarge"
root_vol_size = 64
instance_name = "quick-server"
ssh_cidr_blocks = [
  "172.103.164.222/32" # Place appropriate cidr blocks as a list of strings here
]
# Place any additional (non-ssh) cidr blocks here
https_inbound_cidr_block = [
  "172.103.164.222/32", # Place appropriate cidr blocks as a list of strings here
]

# Add the public ssh key material as a string:
public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDAhrYbBc1Af8sP6ouPST/t5NV1o7torObOW7L3f5gknb1PXljKtZTNHGgvRfoUjqwbCCqKf4tDCahIt8wW3WTBiXEp4cWedpH8Q19sCmcx6qgyU9TJpdGIvjS4egxzrhs/fnczNVDgsFwvAcbOD6Y9ShU7DQPdGV1Otb9jWzvnfGxWJxaao5rN5pm/Tc3v43bbhgVASMoyuWyguQPpK6u8QuAOhqhG8Kmy0cLKTfNyklHl4LwN0ZhH2bXrQlzj1ZcK6Zk+jnO3oOASduh1HpopImIgz6dgpaAlPKQtEuKQTy4/h4xN/cp+mNjalrfpYgBcct6i3bVQluCaxC723GF5lbAGj2Y50i1MDiEgsNYphLwipCHiqKY7K77N1qPREjc5IUjE8JIG0wNntudgEI+gL+o2E2EcmS82r+hlLch0hq0NJ2cvHtAHF6N22NhpamLp7oj+h4nRdvA3bI492rx2BfQ79dCZ9wTUnKnpVx0aQHlcob/NDAO4S3+AQNXVo9k=" # key starting with ssh-rsa...

# Add one of the following (priority is given to the ami variable):
# NOTE: if ami variable is not given, marketplace_ami_name will be used !!
ami = "ami-0d5b55fd8cd8738f5" #  base ami for your chosen region

# IMPORTANT: See this link for server AMIs for other regions: https://cloud-images.ubuntu.com/locator/ec2/
marketplace_ami_name = "Windows_Server-2019-English-Core-Base-*"

ssh_port = 22
https_port = 443
http_port = 80