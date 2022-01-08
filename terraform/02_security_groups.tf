resource "aws_security_group" "kubernetes-sg" {
  name = "kubernetes-sg"
  vpc_id = aws_vpc.kubernetes-vpc.id

  tags = {
    Name = "kubernetes-sg"
    "kubernetes.io/cluster/elasticsearch" = "owned"
  }

  ingress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
