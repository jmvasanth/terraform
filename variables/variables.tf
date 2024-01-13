variable "ami_id" {
  type = string # This is the data type
  default = "ami-03265a0778a880afb" # This is the default value
}

variable "instance_type" {
    default = "t2.micro"
}

variable "sg_name" {
    default = "allow_all"
}

variable "sg_cidr" {
  type = list
  default = ["0.0.0.0/0"]
}

variable "tags" {
    type = map
    default = {
        Name = "MongoDB"
            Environment = "DEV"
            Terraform = "true"
            Project = "Roboshop"
            Component = "MongoDB"
    }
  
}