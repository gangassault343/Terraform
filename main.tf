//Block -A Which Plugin to download (Not mandatory but considered best practice)
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

//Block -B Details about the plugin which we are going to create resources inside AWS environment (It is cumpolsory block)
provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "ec2" {
  ami           = "ami-06fa3f12191aa3337"
  instance_type = "t2.micro"
  tags = {
    Name = "terraform-ec2"
  }

}
