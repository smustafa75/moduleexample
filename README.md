# How to create/ use TF modules
This repo shall provide below infrastructure once provisioned:

- 01 VPC
- 01 IGW
- 02 Public Subnets
- 02 Private Subnets
- 01 Instance Profile
    - 01 IAM Role
    - 01 IAM Policy
- 02 EC2 instances

Once completed, the script will automatically install HTTP into EC2 insatnces and start the service.
You will see EC2 metrics in CloudWatch within 10 minutes.
The **tfvars** files is added as text, use it as desired.

### Terraform Version ###
Terraform v1.1.2
+ provider registry.terraform.io/hashicorp/aws v3.71.0
+ provider registry.terraform.io/hashicorp/random v3.1.0
+ provider registry.terraform.io/hashicorp/template v2.2.0