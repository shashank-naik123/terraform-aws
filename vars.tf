variable "region" {
  default = "us-east-1"

}

variable "zone1" {
  default = "us-east-1a"

}

variable "webuser" {
  default = "ubuntu"

}


variable "amiID" {
  type = map(any)
  default = {
    "us-east-1" = "ami-0ec10929233384c7f"
    "us-east-2" = "ami-07062e2a343acc423"
    "us-west-1" = "ami-0507f5acd9ba8e6b7"
    "us-west-2" = "ami-0d76b909de1a0595d"
  }
}