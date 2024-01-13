# resource "aws_instance" "my-first-ec2-tf" {
#   ami = "ami-03265a0778a880afb"
#   instance_type = "t2.micro"
# }

resource "aws_instance" "my-first-ec2-tf" {
    ami = var.ami_id
    instance_type = var.instance_type
    security_groups = [aws_security_group.allow_all.name]
    tags = var.tags
}