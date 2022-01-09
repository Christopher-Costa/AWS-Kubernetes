resource "aws_instance" "kubernetes-ec2-cp1" {
  instance_type = var.ec2_cp_instance_type
  ami = var.ami_id
  key_name = var.ec2_key_name
  availability_zone = var.aws_availability_zone
  iam_instance_profile = aws_iam_instance_profile.kubernetes-cp-iip.id

  network_interface {
    network_interface_id = aws_network_interface.kubernetes-ni-cp1.id
    device_index = 0
  }

  root_block_device {
    volume_size = 10
    volume_type = "gp2"
    delete_on_termination = true
  }

  tags = {
    Name = "kubernetes-ec2-cp1"
    "kubernetes.io/cluster/elasticsearch" = "owned"
  }
}

resource "aws_instance" "kubernetes-ec2-node1" {
  instance_type = var.ec2_node_instance_type
  ami = var.ami_id
  key_name = var.ec2_key_name
  availability_zone = var.aws_availability_zone
  iam_instance_profile = aws_iam_instance_profile.kubernetes-node-iip.id

  network_interface {
    network_interface_id = aws_network_interface.kubernetes-ni-node1.id
    device_index = 0
  }

  root_block_device {
    volume_size = 10
    volume_type = "gp2"
    delete_on_termination = true
  }

  tags = {
    Name = "kubernetes-ec2-node1"
    "kubernetes.io/cluster/elasticsearch" = "owned"
  }
}

resource "aws_instance" "kubernetes-ec2-node2" {
  instance_type = var.ec2_node_instance_type
  ami = var.ami_id
  key_name = var.ec2_key_name
  availability_zone = var.aws_availability_zone
  iam_instance_profile = aws_iam_instance_profile.kubernetes-node-iip.id

  network_interface {
    network_interface_id = aws_network_interface.kubernetes-ni-node2.id
    device_index = 0
  }

  root_block_device {
    volume_size = 10
    volume_type = "gp2"
    delete_on_termination = true
  }

  tags = {
    Name = "kubernetes-ec2-node2"
    "kubernetes.io/cluster/elasticsearch" = "owned"
  }
}
