variable "project_id" {
  description = "GCP Project ID"
  type        = string
}

variable "region" {
  description = "GCP region"
  type        = string
  default     = "us-central1"
}

variable "credentials_file" {
  description = "Path to GCP service account JSON key"
  type        = string
}
