variable "region" {
  description = "The AWS region to deploy the EKS cluster"
  type        = string
  default     = "us-west-2"
}

variable "cluster_name" {
  description = "The name of the EKS cluster"
  type        = string
  default     = "example-eks-cluster"
}

variable "vpc_name" {
  description = "The name of the VPC"
  type        = string
  default     = "example-vpc"
}