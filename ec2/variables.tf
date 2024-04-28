#Create Variables for ec2

variable "aws_region" {
  type        = string
  description = "" #
}


variable "aws_profile" {
  type = string
  #se o default não oestiver na variavel de ambiente uando fizer o "terraform plan" terá que setar o valor
  description = ""
}

/*  exemplo
  variable "aws_profile" {
  type        = string
  description = ""
}
*/

variable "instance_ami" {
  type        = string
  description = ""
}


variable "instance_type" {
  type        = string
  description = ""
}


variable "instance_tags" {
  type = map(string)
  default = {

    Name    = "ubuntu"
    Project = "curso aws w terraform"
  }
}

