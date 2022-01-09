output "aws-master" {
  description = "control plane node 1"
  value = aws_instance.kubernetes-ec2-cp1.public_ip
}

output "aws-worker1" {
  description = "worker node 1"
  value = aws_instance.kubernetes-ec2-node1.public_ip
}

output "aws-worker2" {
  description = "worker node 2"
  value = aws_instance.kubernetes-ec2-node2.public_ip
}
