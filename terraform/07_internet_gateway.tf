resource "aws_internet_gateway" "kubernetes-igw" {
  vpc_id = aws_vpc.kubernetes-vpc.id

  tags = {
    Name = "kubernetes-igw"
  }
}
