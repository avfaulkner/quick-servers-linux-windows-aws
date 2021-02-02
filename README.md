# Quick Servers

This stack builds quick Ubuntu 20.04 and Windows Server 2019 servers and basic networking infrastructure for each.

### Use case
- Running tests requiring quick server configuration.

## Requirements

### Tooling

- Terraform >= 0.12.28
- AWS Provider >= 2.0

## Usage Instructions

1. Clone the repo onto your local workstation
2. cd into quick-servers-linux-windows-aws/server-linux or quick-servers-linux-windows-aws/server-windows
3. Add your desired variables to the server-linux/terraform.tfvars and server-windows/terraform.tfvars files
    - public_key: Add public key material (string starting with ssh-rsa...)
    - Instance AMI variables: 
        - ami: The AMI ID of the desired instance 
        - marketplace_ami_name: The name of an image in the AWS Marketplace.
        Examples could be "ubuntu*", "centos*", etc. 
        - Priority is given to the "ami" variable; if a specific AMI ID is provided, 
        we will use that image. 
    - Subnetting: 
        - Public subnet: Use if ssh'ing to the server from outside of the server's network.
        - Private subnet: Use if ssh'ing from within the server's network.  
4. CD into either the server-linux or server-windows directory to build a linux or windows server. 
5. Use the commands below to initialize the terraform code, plan and apply to build the infrastructure.



Initialize the environment

```
terraform init
```

Planning

```
terraform plan 
```

Apply

```
terraform apply 
```

Destroy

```
terraform destroy
```

### Note
To view a list of resources that have been created

```
terraform state list
```
