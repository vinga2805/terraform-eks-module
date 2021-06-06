# Variables Configuration

variable "cluster-name" {
  default     = "demo-cluster"
  type        = string
  description = "The name of your EKS Cluster"
}

variable "aws-region" {
  default     = "ap-south-1"
  type        = string
  description = "The AWS Region to deploy EKS"
}

variable "availability-zones" {
  default     = ["ap-south-1a", "ap-south-1b", "ap-south-1c"]
  type        = list
  description = "The AWS AZ to deploy EKS"
}

variable "k8s-version" {
  default     = "1.19"
  type        = string
  description = "Required K8s version"
}

variable "kublet-extra-args" {
  default     = ""
  type        = string
  description = "Additional arguments to supply to the node kubelet process"
}

variable "public-kublet-extra-args" {
  default     = ""
  type        = string
  description = "Additional arguments to supply to the public node kubelet process"

}

variable "vpc-subnet-cidr" {
  default     = "10.0.0.0/16"
  type        = string
  description = "The VPC Subnet CIDR"
}

variable "private-subnet-cidr" {
  default     = ["10.0.0.0/19", "10.0.32.0/19", "10.0.64.0/19"]
  type        = list
  description = "Private Subnet CIDR"
}

variable "public-subnet-cidr" {
  default     = ["10.0.128.0/20", "10.0.144.0/20", "10.0.160.0/20"]
  type        = list
  description = "Public Subnet CIDR"
}

variable "db-subnet-cidr" {
  default     = ["10.0.192.0/21", "10.0.200.0/21", "10.0.208.0/21"]
  type        = list
  description = "DB/Spare Subnet CIDR"
}

variable "eks-cw-logging" {
  default     = ["api", "audit", "authenticator", "controllerManager", "scheduler"]
  type        = list
  description = "Enable EKS CWL for EKS components"
}

variable "node-instance-type" {
  default     = "m4.large"
  type        = string
  description = "Worker Node EC2 instance type"
}

variable "root-block-size" {
  default     = "20"
  type        = string
  description = "Size of the root EBS block device"

}

variable "desired-capacity" {
  default     = 2
  type        = string
  description = "Autoscaling Desired node capacity"
}

variable "max-size" {
  default     = 5
  type        = string
  description = "Autoscaling maximum node capacity"
}

variable "min-size" {
  default     = 1
  type        = string
  description = "Autoscaling Minimum node capacity"
}

variable "ec2-key-public-key" {
  default     = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCm8hil6Qqh5s05e5dn09bz9cvezaPiMC6Fm3jYtgclVvHeUStpxQhRpxKG+B5UjJDHTcdEDcjXXEvJIqZHzMYT22IdsELHkJAGxFiI/CWiNioDA+bjFFQZ9ieUWYNI/rJ2tVkI6VzmAKjqgXifzl8di7/VAXzHpbeYRECsWYyWxLmbmEiefcG91blHhP82fx97LiYXSGDF2R4RoybgTcjHV/B1qsCz1Z5GEU9jIHfrMjjtVkARtNqoIPn4kz4wveyMQBpdjBXNl5+FXqPlFCDNivKRQZfWWGqXcpJyJXjtriEwuPb52GuooymSBk3zXlV2IhKDp8QpLpVMqM8RZiLB ubuntu@ip-172-31-12-119"
  type        = string
  description = "AWS EC2 public key data"
}
