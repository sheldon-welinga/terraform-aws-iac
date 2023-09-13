# Input variables
variable "aws_region" {
    description     = "AWS Region"
    type            = string
    default         = "us-east-1"
}
variable "instance_type" {
    description     = "EC2 instance type"
    type            = string
    default         = "t2.micro"
}

variable "ami_id" {
    description     = "EC2 AMI ID"
    type            = string
}

# Configure the AWS provider using input variables
provider "aws" {
    region  = var.aws_region
}

resource "aws_instance" "example_instance" {
    ami             = var.ami_id
    instance_type   = var.instance_type
}

# Define output variables to expose the public IP address of the EC2 instance
output "public_ip" {
    description = "Public IP address of the EC2 instance"
    value       = aws_instance.example_instance.public_ip
}
