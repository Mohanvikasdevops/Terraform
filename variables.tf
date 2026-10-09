variable "project" {
  type        = string
  default     = "roboshop"
  description = "The project name for tagging resources"
}

variable "environment" {
  type        = string
  default     = "dev"
  description = "The environment name for tagging resources"
}

variable "ami_id" {
  type        = string
  default     = "ami-0220d79f3f480ecf5"
  description = "The AMI ID for the EC2 instance"
}

variable "instance_type" {
  type        = string
  default     = "t3.micro"
  description = ""
}

variable "sg_ids" {
  type        = list(string)
  default     = ["sg-0976587a34ac3130c"]
  description = "List of security group IDs to associate with the EC2 instance"
}

# Empty means optional
variable "tags" {
    type        = map
    default     = {}
  
}