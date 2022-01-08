resource "aws_subnet" "kubernetes-subnet" {
  vpc_id = aws_vpc.kubernetes-vpc.id
  cidr_block = var.subnet_cidr_block
  map_public_ip_on_launch = "true"
  availability_zone = var.aws_availability_zone

  tags = {
    Name = "kubernetes-subnet"
    "kubernetes.io/cluster/elasticsearch" = "owned"
  }
}
