variable "rgname" {
  default = "testrgmodule"
}

variable "loc" {
  default = "eastus"
}


variable "vnetname" {
  default = "vnet1"
}

variable "vnetaddress" {
 default = ["10.0.0.0/16"]
}

variable "s1" {
  default = "subnet1"
}

variable "s2" {
  default = "subnet2"
}

variable "s3" {
  default = "subnet3"
}

variable "subnetaddress" {
  type    = list(any)
  default = ["10.0.0.0/24", "10.0.1.0/24", "10.0.2.0/24"]
}

variable "tags" {
  type = map(any)
  default = {
    name    = "vnettag"
    env     = "prod"
    created = "apple"
  }
}
