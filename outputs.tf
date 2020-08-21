output "ips" {
  value = aws_wafregional_ipset.ips
}


output "ip_whitelist" { value = aws_wafregional_web_acl.ip_whitelist }

output "ip_match" {
  value = aws_wafregional_rule.ip_match
}
