variable "resource_group_name" {
  description = "The name of the resource group."
  type        = string
}

variable "storage_account_name" {
  description = "The name of the storage account."
  type        = string
}

variable "location" {
  description = "The Azure location where the resource group will be created."
  type        = string
}

variable "df_name" {
  description = "The name of the Data Factory."
  type        = string
  
}