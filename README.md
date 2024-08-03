# AWS EC2 Provisioning

![Terraform@](https://img.shields.io/badge/terraform-%235835CC.svg?style=for-the-badge&logo=terraform&logoColor=white)
![AWS](https://img.shields.io/badge/AWS-%23FF9900.svg?style=for-the-badge&logo=amazon-aws&logoColor=white)
![Ubuntu](https://img.shields.io/badge/Ubuntu-E95420?style=for-the-badge&logo=ubuntu&logoColor=white)

Provisionning EC2 instance of t3.micro on Osaka region.

## Requirements

You need:

- Terraform
- AWS CLI + configured with your access and secret key

## Variables

Some variables are set with default values such as:

- AWS Region, deploying instances in Osaka (ap-northeast-3)
- EC2 Instance type, using t3.micro

You will need to define few variables either in a _terraform.tfvars_ file or interactively while running it.

### Using a tfvars file

If you choose this option, you can create file prefixed with tfvars extension.

Once it's done, you will need to add these variables:

```terraform
instance_name = "<EC2_INSTANCE_NAME>"
private_key_location = "<YOUR_SSH_KEY_LOCATION>"
```

## Apply configuration

Now that you've put everything in place, you can run these following commands:

```bash
terraform init
terraform apply -var-file=<YOUR_TFVARS_FILE> # Remove the var-file argument if you didn't create a tfvars file.
```

Once you've executed the apply, it will ask you to approve or not. Enter yes if you want to create all resources.

## Output

It will output the public IP address to log in using SSH. Also by default it will add your public ssh key. If your public key is not using the same name as the private and the _pub_ extension then you will have to update it.

## Clean up

If you want to delete all resources, you will need to run this command:

```bash
terraform destroy
```
