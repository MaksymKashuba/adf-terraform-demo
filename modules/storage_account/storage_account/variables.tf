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

variable "source_folder_name" {
    description = "The source folder name for the storage container."
    type        = string 
}

variable "destination_folder_name" {
    description = "The destination folder name for the storage container."
    type        = string 
}

variable "container_access_type" {
    description = "The access type for the storage container."
    type        = string
    default     = "private"
}