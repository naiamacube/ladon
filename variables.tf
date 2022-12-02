variable "gcp_billing_id" {
  description = "GCP Billing account ID"
  type        = string
  sensitive   = true
}

variable "gcp_organization_id" {
  description = "GCP Organization ID"
  type        = string
  sensitive   = true
}

variable "gcp_credentials" {
  description = "GCP SA Private Key"
  type        = string
  sensitive   = true
}

variable "gcp_region" {
  description = "GCP Region for Ladon project"
  type        = string
  sensitive   = true
}

variable "gcp_region_logging" {
  description = "GCP Region for Logging"
  type        = string
}

variable "gcp_region_dev_subnet_1" {
  description = "GCP Region for Development VPC Subnet 1"
  type        = string
}

variable "gcp_region_dev_subnet_2" {
  description = "GCP Region for Development VPC Subnet 2"
  type        = string
}

variable "gcp_region_stage_subnet_1" {
  description = "GCP Region for Stage VPC Subnet 1"
  type        = string
}

variable "gcp_region_stage_subnet_2" {
  description = "GCP Region for Stage VPC Subnet 2"
  type        = string
}

variable "gcp_region_prod_subnet_1" {
  description = "GCP Region for Prouction VPC Subnet 1"
  type        = string
}

variable "gcp_region_prod_subnet_2" {
  description = "GCP Region for Prouction VPC Subnet 2"
  type        = string
}

variable "gcp_zone" {
  description = "GCP Zone"
  type        = string
  sensitive   = true
}
