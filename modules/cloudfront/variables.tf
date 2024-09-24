variable "origin_id" {
  type        = string
  description = "S3 ID"
}

variable "bucket_domain_name" {
  type        = string
  description = "S3 Domain"
}

variable "cdn_price_class" {
  type        = string
  default     = "PriceClass_200"
  description = "CDN Price Class"
}

variable "cdn_tags" {
  type        = map(string)
  default     = {}
  description = "Creation Tags"
}