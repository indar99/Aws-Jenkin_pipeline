variable "vpc_cidr"{
  default = "10.0.0.0/16"
}

variable "aws_ami"{
  type = "map"
  default = {
    "us-east-1" = "ami-0b0f4c27376f8aa79"
    "us-east-2" = "ami-0b0f4c27376f8aa79"
   }
}

variable "aws_type"{
  default = "t2.micro"
}

variable "aws_count"{
  default = "1"
}

variable "aws_region"{
  default = "us-east-2"
}
   
