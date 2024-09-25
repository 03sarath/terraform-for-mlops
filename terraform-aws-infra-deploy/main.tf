terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region  = "us-east-1"
}

resource "aws_instance" "app_server" {
  ami           = "ami-0e54eba7c51c234f6" #2) ami-0e54eba7c51c234f6 1) ami-0ebfd941bbafe70c6
  instance_type = "t2.micro"

  tags = {
    Name = var.instance_name
  }
}


resource "aws_s3_bucket" "my_bucket" {
  bucket  = "psi-bucket-name"
  tags    = {
	Name          = "MyS3Bucket"
	Environment    = "Production"
  }
}

