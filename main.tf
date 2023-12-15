/*terraform{
  backend "s3"{
    bucket = "batch110"
    key = "terraform.tfstate"
    region = "ap-south-1"
  }

}*/




locals{
  environment=terraform.workspace
}


resource "aws_instance" "LinuxServerEC2V1" {
        count =2
        ami = var.ami
        instance_type = var.instancetype
        key_name = var.keyname
        
        subnet_id = var.subnet
        associate_public_ip_address=true

        vpc_security_group_ids = [var.securitygroup]
  
    tags = {
               Name ="Server ${count.index}"
               }
}






provider "aws" {
  region = "ap-south-1"
}