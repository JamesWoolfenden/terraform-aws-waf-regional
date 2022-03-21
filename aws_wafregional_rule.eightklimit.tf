resource "aws_wafregional_rule" "eightklimit" {
  name        = "eightklimit"
  metric_name = var.ipset["name"]

  predicate {
    data_id = aws_wafregional_ipset.ips.id
    negated = false
    type    = "IPMatch"
  }

  tags = var.common_tags
}
