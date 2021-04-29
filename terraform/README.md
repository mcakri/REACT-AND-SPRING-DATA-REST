# terraform
Terraform, Infrastructure as Code! 
Prerequsites:
* User with Adminnistrator Access to AWS account
* Create bucket rk-dev-terraform-state-bucket to store terraform state file
* Github repository access (react-and-spring-data-rest)

It creates; 
* 1 VPC, 
* 3 public subnets
* 3 private subnets
* 1 Internet Gateway 
* 1 Application Load Balancer
* 3 codepipelines
* 1 codebuild
* 1 ECS cluster with Fargate

After cloning the repo, just run these  commands

```
cd terraform/
terraform init
terraform plan -out terraform.out
* Enter your account ID

You might face some issue in module stating 
```on .terraform/modules/ecr/main.tf line 19, in module "labels":
  19:   application = var.application
```
Remove line  application = var.application from .terraform/modules/ecr/main.tf file and re-run terraform plan (This is issue in hashicorp module)
terraform apply terraform.out
* Enter your account ID
* Then select 'yes' to create infratucture
```


To Destroy created infrastructure
cd terraform/
terraform destroy
