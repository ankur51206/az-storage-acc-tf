# variables.tf

variable "client_id" {}
variable "client_secret" {}
variable "subscription_id" {}
variable "tenant_id" {}


variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
  default     = "sample-rg"
}

variable "location" {
  description = "Azure region for the resources"
  type        = string
  default     = "East US"
}

variable "storage_account_name" {
  description = "Name of the storage account"
  type        = string
  default     = "samplestorageaccount"
}
