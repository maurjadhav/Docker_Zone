variable "region" {
  default     = "ap-south-2"
  description = "region to create ec2 instance with docker installed"
}

variable "instance_type" {
  default     = "t3.micro"
  description = "set the instance type"
}