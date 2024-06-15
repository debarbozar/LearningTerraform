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

variable "resource_group_name" {
  description = "Nome para o resource Group"
  type        = string
  default     = "rg-terraform"
}

variable "storage_account_name" {
  description = "Nome para o Storage Account name"
  type        = string
  default     = "debarbozaterraform"
}

variable "container" {
  description = "Nome do container"
  type        = string
  default     = "container-terraform"
}

## in termninal ##

# terraform init
