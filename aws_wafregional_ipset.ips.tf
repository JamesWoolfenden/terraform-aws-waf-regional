resource "aws_wafregional_ipset" "ips" {
  name = var.ipset["name"]
  dynamic "ip_set_descriptor" {
    for_each = var.ipset["ip_addrs"]
    iterator = list_item
    content {
      type  = "IPV4"
      value = list_item.value
    }
  }
}
