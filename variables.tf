
variable "ipset" {
  description = "Complex object to describe and populate ipset"
}

variable "acl_name" {
  type    = string
  default = "IPWhiteListWebACL"
}


variable "metric_name" {
  type    = string
  default = "IPWhiteListWebACL"
}

variable "common_tags" {
  type        = map(any)
  description = "Implement the common_tags scheme"
}
