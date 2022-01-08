output "aws-master" {
  description = "control plane node 1"
  value = aws_instance.kubernetes-ec2-cp1.public_ip
}

output "aws-worker" {
  description = "worker node 1"
  value = aws_instance.kubernetes-ec2-node1.public_ip
}
