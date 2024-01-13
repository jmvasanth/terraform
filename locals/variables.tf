variable "instance_names" {
  type = list
  default = ["mongodb", "catalogue", "redis", "user", "cart", "shipping", "rabbitmq", "payment", "mysql", "web"]
}

variable "zone_id" {
  default = "Z0308214GYCUYHGJHT8R"
}

variable "domain" {
  default = "joindevops.online"
}

variable "isPROD" {
  default = false
}