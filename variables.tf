variable "ami_id" {
  type = string
  default = "ami-09c813fb71547fc4f"
  description = "this is the ami used for ec2 creation"
}

variable "aws_security_group" {
    type = list
}

variable "instance_type" {
    type = string
    description = "this instance type is used for ec2 creation"
    validation {
      condition = contains(["t3.micro", "t3.small", "t3.medium"], var.instance_type)
      error_message = "please select t3.micro or t3.small or t3.medium "
    }
}

variable "tags" {
  type = map
  default = {}
}