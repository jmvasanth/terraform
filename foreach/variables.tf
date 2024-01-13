variable "ami_id" {
  type = string # This is the data type
  default = "ami-03265a0778a880afb" # This is the default value
}

variable "instances" {
    type = map
    default = {
        mongodb = "t3.medium"
        mysql   = "t3.medium"
        catalogue = "t2.micro"
        redis = "t2.micro"
        user = "t2.micro"
        cart = "t2.micro"
        shipping = "t2.micro"
        rabbitmq = "t2.micro"
        payment = "t2.micro"
        web = "t2.micro"
    }
}

variable "zone_id" {
    default = "Z0803879328RS2R0BHFXF"
}

variable "domain" {
    default = "vgsk.online"
}

variable "ingress" {
  type = list
  default = [
    {
        from_port = 80
        to_port = 80
        description = "allowing PORT 80 from public"
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    },
    {
        from_port = 443
        to_port = 443
        description = "allowing PORT 443 from public"
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    },
    {
        from_port = 22
        to_port = 22
        description = "allowing PORT 22 from public"
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
  ]
}