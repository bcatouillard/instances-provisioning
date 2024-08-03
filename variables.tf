variable "region" {
  type        = string
  description = "(optional) AWS Region"
  default     = "ap-northeast-3"
}

variable "instance_type" {
  type        = string
  description = "(optional) EC2 Instance type"
  default     = "t3.micro"
}

variable "instance_name" {
  type        = string
  description = "EC2 Instance name"
}

variable "private_key_location" {
  type        = string
  description = "Path to SSH private key"
}
