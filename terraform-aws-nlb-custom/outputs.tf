# this file contains outputs of aws nlb creation module
# Work in progress...
# 
# Outputs of NLB module
# ARN of newly created NLB
# DNS Name of NLB Virtual IP address (A record)

output "nlb_arn" {
  value = nlb.arn
}

output "nlb_dns_name" {
  value = nlb.dns_name
}
