module "calling_rg" {
    source = "../../module/azurerm_resource_group"
     rgs = var.rgs
}

module "calling_aks" {
    source = "../../module/azurerm_aks_cluster"
    kubernetes_clusters = var.kubernetes_clusters  
}

module "calling_acr" {
    source = "../../module/azurerm_ACR"
    container_registries = var.container_registries 
}

module "calling_sql_server"{
    source = "../../module/azurerm_mssql_server"
    mssql_servers = var.mssql_servers
}

module "calling_sql_database" {
        source = "../../module/azurerm_mssql_database"
    mssql_databases =  var.mssql_databases
}

