variable "location_name" {
}

variable "rg_name" {

}

variable "nsg_name"{

}
variable "dns_servers"{
    type = list
    default = ["10.0.0.4", "10.0.0.5"]
}