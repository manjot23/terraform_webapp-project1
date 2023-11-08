variable "instance_type" {
  default = "t2.micro"
}
variable "operator_email" {
  default     = "manjot@gmail.com "
  description = "a valid email address"
  type        = string
}
