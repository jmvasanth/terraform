resource "aws_instance" "conditions" {
  ami = var.ami_id
  instance_type = var.instance_name == "cart" ? "t3.medium" : "t2.micro"
}