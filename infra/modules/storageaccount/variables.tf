variable "storage_account_name" {
    description = "Name of the storage account"
    type        = string
    validation {
        condition = length(var.storage_account_name) > 3 && length(var.storage_account_name) < 25
        error_message = "The storage account name must be at least 4 and at most 24 characters long."
    }
  
}