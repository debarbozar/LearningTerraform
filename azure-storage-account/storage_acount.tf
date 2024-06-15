resource "azurem_resource_group" "resource_group" {
  name     = var.resource_group_name
  location = var.location

  tags = local.common_tags
}

resource "azurem_storage_account" "storage_account" {
  name                     = var.storage_account_name
  resource_group_name      = azurem_resource_group.resource_group.name #utilizando o nome do resorce acima
  location                 = var.location
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type

  tags = local.common_tags
}

resource "azurem_storage_container" "container" {
  name                 = var.container
  storage_account_name = azurem_storage_account.storage_account.name

}