variable "s3_bucket_name" {
  type        = string
  default     = "projeto-iac"
  description = "Bucket name"
}

variable "s3_tags" {
  type        = map(string)
  default     = {}
  description = "Creation Tags"
}