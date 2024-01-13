variable "ami_id" {
  default = "ami-03265a0778a880afb" 
}

variable "instance_names" {
  type = list
  default = ["mongodb", "catalogue", "redis", "user", "cart", "shipping", "rabbitmq", "payment", "mysql", "web"]
}

variable "zone_id" {
    default = "Z0803879328RS2R0BHFXF"
}

variable "domain" {
    default = "vgsk.online"
}