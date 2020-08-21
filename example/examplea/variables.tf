
variable "ipset" {
  default = {
    name     = "IPSet_examplea"
    ip_addrs = ["10.0.0.0", "127.0.0.1"]
  }
}

variable "common_tags" {
  description = "This is to help you add tags to your cloud objects"
  type        = map
}
