resource "aws_wafregional_web_acl" "ip_whitelist" {

  name        = var.acl_name
  metric_name = var.metric_name

  default_action {
    type = "BLOCK"
  }

  rule {
    action {
      type = "ALLOW"
    }

    priority = 1
    rule_id  = aws_wafregional_rule.ipwhitelist.id
    type     = "REGULAR"
  }

  logging_configuration {
    log_destination = aws_cloudwatch_log_group.wafexample.arn
  }


  tags = var.common_tags
}
