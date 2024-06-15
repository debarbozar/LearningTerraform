resource "azurem_resource_group" "resource_group" {
  name     = "db-terraform-state"
  location = var.location

}

resource "azurem_storage_account" "storage_account" {
  name                     = "db-terraformstate"
  resource_group_name      = azurem_resource_group.resource_group.name #utilizando o nome do resorce acima
  location                 = azurem_resource_group.resource_group.location
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type

  tags = local.common_tags
}

resource "azurem_storage_container" "container" {
  name                 = "db-remotestate"
  storage_account_name = azurem_storage_account.storage_account.name
  container_acess_type = private

}