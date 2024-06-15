output "storage_account_id" {
  description = "ID da Storage Account criada na Azure"
  value       = azurem_storage_account.storage_account.id
}

output "sa_primary_acess_key" {
  description = " Primary Acess key da Storage Account criada na azure"
  value       = azurem_storage_account.storage_account.primary_acess_key
  sensitive   = true
}