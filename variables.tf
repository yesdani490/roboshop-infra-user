variable "project_name" {
    
  default = "roboshop"
}
variable "cidr_block" {
    default = "10.0.0.0/16"
  
}
variable "common_tags" {
    default = {
        Project = "Roboshop"
        Environment = "Dev"
        Terraform = "true"
    }
  }

  variable "sg_tags" {
    default = {
        Project = "Roboshop"
        Environment = "Dev"
        Terraform = "true"
    }
  }

variable "igw_tags" {
    default = {
        Project = "Roboshop"
        Environment = "Dev"
        Terraform = "true"
    }
  }
variable "public_subnet_cidr" {

  default = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "private_subnet_cidr" {
  default = ["10.0.11.0/24", "10.0.12.0/24"]
  
}

variable "database_subnet_cidr" {
  default = ["10.0.21.0/24", "10.0.22.0/24"]
  
}
variable "sg_ingress_rules" {
  default = [
    {
      to_port = 0
      from_port = 0
      protocol = "-1"
      description = "allowing all traffic from internet"
      cidr_blocks = ["0.0.0.0/0"]
    }
  ]
  
}
variable "instances" {
  default = {
    MongoDB = "t2.medium"
    MySql = "t2.medium"
    Redis = "t2.micro"
    Shipping = "t2.micro"
    Cart = "t2.micro"
    Web = "t2.micro"
    Payment = "t2.micro"
    User = "t2.micro"
    RabbitMQ = "t2.micro"
    Catalogue = "t2.micro"
  }
}
variable "zone_name" {
  default = "joindevops.top"
}