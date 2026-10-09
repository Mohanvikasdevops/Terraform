# Terraform aws instance

This module creates EC2 instance in AWS.

## inputs
* project - (Required) string type, user must provide project name ex. roboshop, expense, etc.
* Environment - (Required) string type, user must provide environment ex. dev, uat, prod etc.
* ami_id - (Required) string type, user must provide ami_id of the instance.
* instance_type - (Optional) string type, default values is t3.micro Users can override.
* sg_ids - (Required) list of string, users must provide list of security group ids instance should have.
* tags - (Optional) list type, user can provide the tags they want to have.

## Outputs
* instance_id - ID of the instance created
* public_ip - Public IP of the instance created
* private_ip - Private IP of the instance created

