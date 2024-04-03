terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.61.0"
    }
  }
}

provider "aws" {
  
  region = "us-east-1"
}

/*
resource "aws_iam_group" "gp1" {
  name = "manager24" 
  lifecycle {
    prevent_destroy = false
    
  }
}
/*

/*
resource "aws_iam_user" "usr1" {
  name = "samuel2024"
  depends_on = [ aws_iam_group.gp1 ]
}
*/

resource "aws_instance" "server1" {
  ami = "ami-033a1ebf088e56e81"
  instance_type = "t2.micro"
   key_name = "wordpress1"
   subnet_id = "subnet-0d6c07b75c191248d"
   lifecycle {
     create_before_destroy = true
   }
}