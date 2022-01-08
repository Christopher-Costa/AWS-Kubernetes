resource "aws_vpc" "kubernetes-vpc" {
  cidr_block = var.vpc_cidr_block

  tags = {
    Name = "kubernetes-vpc"
  }
}
