variable "location" {
  description = "Região onde os recursos serão criados na azure"
  type        = string
  default     = "West Europe"
}

variable "account_tier" {
  description = "Tier da Storage Account na azure"
  type        = string
  default     = "standard"
}

variable "account_replication_type" {
  description = "Tipo de replicação de dados da storage account"
  type        = string
  default     = "LRS"

}