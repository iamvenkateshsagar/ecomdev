variable "secret_name" {
  description = "Name of the secret"
  type        = string
}

variable "description" {
  description = "Description of the secret"
  type        = string
  default     = ""
}

variable "secret_value" {
  description = "Secret value"
  type        = string
  sensitive   = true
}

variable "kms_key_id" {
  description = "KMS Key ARN"
  type        = string
  default     = null
}

variable "tags" {
  type    = map(string)
  default = {}
}
