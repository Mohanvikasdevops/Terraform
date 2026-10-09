resource "aws_instance" "roboshop" {
    ami                      = "ami-0220d79f3f480ecf5"
    instance_type            = "t3.micro"
    vpc_security_group_ids   = [aws_security_group.allow_tls.id]

    # self is the special variable 
    provisioner "local-exec" {
        command = "echo ${self.public_ip} > inventory.ini"
    }

    provisioner "local-exec" {
        command = "exit 1"
    }

    provisioner "local-exec" {
        when = destroy
        command = "echo 'Deleting the instance'" 
    }
    
    provisioner "local-exec" {
        when = destroy 
        command = "echo > inventory.ini"
    }

    tags = {
        Name = "provisioners-demo"
        Project = "roboshop"
    }
}

resource "aws_security_group" "allow_tls" {
    name        = "allow-all-terraform" #this is for AWS account
    description = "Allow TLS inbound and outbound traffic"

    egress {
        from_port   = 0
        to_port     = 0
        protocol    = "-1"
        cidr_blocks = ["0.0.0.0/0"]
        ipv6_cidr_blocks = ["::/0"]
    }

    ingress {
        from_port   = 0
        to_port     = 0
        protocol    = "-1"
        cidr_blocks = ["0.0.0.0/0"]
        ipv6_cidr_blocks = ["::/0"]
    }

    tags = {
        Name = "allow-all-terraform"
    }
}

