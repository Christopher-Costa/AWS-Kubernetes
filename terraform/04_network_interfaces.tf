resource "aws_network_interface" "kubernetes-ni-cp1" {
  subnet_id = aws_subnet.kubernetes-subnet.id
  private_ips = [ var.ec2_cp_private_ip_addresses[0] ]
  security_groups = [ aws_security_group.kubernetes-sg.id ]
  source_dest_check = "false"

  tags = {
    Name = "kubernetes-ni-cp1"
  }
}

resource "aws_network_interface" "kubernetes-ni-node1" {
  subnet_id = aws_subnet.kubernetes-subnet.id
  private_ips = [ var.ec2_node_private_ip_addresses[0] ]
  security_groups = [ aws_security_group.kubernetes-sg.id ]
  source_dest_check = "false"

  tags = {
    Name = "kubernetes-ni-node1"
  }
}

resource "aws_network_interface" "kubernetes-ni-node2" {
  subnet_id = aws_subnet.kubernetes-subnet.id
  private_ips = [ var.ec2_node_private_ip_addresses[1] ]
  security_groups = [ aws_security_group.kubernetes-sg.id ]
  source_dest_check = "false"

  tags = {
    Name = "kubernetes-ni-node2"
  }
}
