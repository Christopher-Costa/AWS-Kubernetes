resource "aws_route_table" "kubernetes-rt" {
  vpc_id = aws_vpc.kubernetes-vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.kubernetes-igw.id
  }

  tags = {
    Name = "kubernetes-rt"
    "kubernetes.io/cluster/elasticsearch" = "owned"
  }
}

resource "aws_route_table_association" "kubernetes-rta" {
  subnet_id = aws_subnet.kubernetes-subnet.id
  route_table_id = aws_route_table.kubernetes-rt.id
}
