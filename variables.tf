variable "ami_id" {
  type = string
  description = "this is the ami used for ec2 creation"
}

variable "aws_security_group" {
    type = list
}

variable "instance_type" {
    type = string
    description = "this instance type is used for ec2 creation"
}

variable "tags" {
  type = map
  default = {}
}