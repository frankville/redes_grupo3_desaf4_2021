variable "region" {
  description = "Region in AWS"
}

variable "vpc1_id" {
  description = "Id VPC1"
}

variable "ami_id" {
  description = "AMI id"
  type = string
}

variable "internet_gateway_id" {
  description = "Internet Gateway Id"
  type = string
}

variable "key1" {
  description = "KEY"
  type = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type = string
}