variable "instance_name" {
  default = "MongoDB"
}

variable "ami_id" {
  type = string # This is the data type
  default = "ami-03265a0778a880afb" # This is the default value
}

variable "domain" {
    default = vgsk.online
}