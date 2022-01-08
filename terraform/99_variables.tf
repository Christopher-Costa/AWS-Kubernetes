variable "aws_access_key" {
  type = string
  description = "Access Key for AWS account"
}

variable "aws_secret_key" {
  type = string
  description = "Secret Key for AWS account"
}

variable "ec2_key_name" {
  type = string
  description = "Name of the EC2 Key Pair to apply to the created instances"
}

variable "aws_region" {
  type = string
  description = "AWS Region to deploy resources in"
  default = "us-east-2"
}

variable "aws_availability_zone" {
  type = string
  description = "The name of the AWS availability zone to deploy instances into"
  default = "us-east-2b"
}

variable "vpc_cidr_block" {
  type = string
  description = "The CIDR Block for the AWS VPC"
  default = "10.0.0.0/16"
}

variable "subnet_cidr_block" {
  type = string
  description = "The CIDR block for the AWS VPC subnet"
  default = "10.0.1.0/24"
}

variable "ami_id" {
  type = string
  description = "The ID of the AWS AMI to be used by the EC2 instances"
  default = "ami-0ba62214afa52bec7"
}

variable "ec2_cp_instance_type" {
  type = string
  description = "The instance type of the EC2 instances used for Kubernetes control plane"
  default = "t2.micro"
}

variable "ec2_node_instance_type" {
  type = string
  description = "The instance type of the EC2 instances used for Kubernetes worker nodes"
  default = "t2.micro"
}

variable "ec2_cp_private_ip_addresses" {
  type = list
  description = "A list of private IP addresses for the control plane instances"
  default = [ "10.0.1.10" ]
} 

variable "ec2_node_private_ip_addresses" {
  type = list
  description = "A list of private IP addresses for the worker node instances"
  default = [ "10.0.1.11" ]
} 
