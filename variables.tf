variable "state_bucket" {
  type        = string
  default     = "projeto-iac"
  description = "Bucket with the state"
}

variable "aws_region" {
  default     = "us-east-2"
  description = "AWS Region to be used"
}

variable "aws_profile" {
  default     = "default"
  description = "AWS Profile to use"
}
