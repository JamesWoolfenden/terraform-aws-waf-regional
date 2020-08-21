resource "aws_wafregional_web_acl" "ip_whitelist" {

  name        = "IPWhiteListWebACL"
  metric_name = "IPWhiteListWebACL"

  default_action {
    type = "BLOCK"
  }

  rule {
    action {
      type = "ALLOW"
    }

    priority = 1
    rule_id  = aws_wafregional_rule.ip_match.id
    type     = "REGULAR"
  }
}
