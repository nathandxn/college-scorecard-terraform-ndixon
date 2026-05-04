output "alb_dns_name" {
  description = "Public DNS name for the reporting API load balancer"
  value       = aws_lb.reporting_api_lb.dns_name
}

output "api_url" {
  description = "Public HTTPS URL for the reporting API"
  value       = "https://${var.domain_name}"
}
