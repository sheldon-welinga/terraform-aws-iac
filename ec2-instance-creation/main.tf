provider "aws"{
    region = "us-east-1"
}

resource "aws_instance" "example"{
    ami             = "ami-053b0d53c279acc90" # Specify an appropriate AMI ID (Can be found when launching an EC2 instance)
    # Don't create it though, just copy the ID, @see https://us-east-1.console.aws.amazon.com/ec2/home?region=us-east-1#LaunchInstances:
    instance_type   = "t2.micro"

    # Incase of errors, then add this as well
    # subnet_id = "subnet-<ID>"
    # key_name = "<KEY_PAIR_NAME>"
}
