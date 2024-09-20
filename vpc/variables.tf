variable "vpc_name" {
  description = "The name of the VPC"
  type        = string
}

variable "region" {
  description = "The AWS region"
  type        = string
  default      = "us-east-1"
}

# Add other variables as needed