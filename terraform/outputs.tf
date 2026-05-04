output "alb_dns_name" {
  description = "Public DNS name for the reporting API load balancer"
  value       = aws_lb.reporting_api_lb.dns_name
}
