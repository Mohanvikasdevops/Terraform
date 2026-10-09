locals {
    instance_name = "${var.naeme}-${var.environment}" # locals-dev
    instance_type = "t3.micro"
    common_tags = {
        Project = "roboshop"
        terraform = "true"
        Environment = "dev"
    
    }
    ec2_final_tags = merge(local.common_tags, var.ec2_tags)
    ami_id = data.aws_ami.joindevops.id
}