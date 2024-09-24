output "cdn_id" {
  value       = aws_cloudfront_distribution.cloudfront.id
  sensitive   = false
  description = "CloudFront ID"
}

output "cdn_domain_name" {
  value       = aws_cloudfront_distribution.cloudfront.domain_name
  sensitive   = false
  description = "CloudFront Domain Name"
}
