rgs = {
  rg1 = {
    name     = "rg1"
    location = "West US"
  }
  rg2 = {
    name     = "rg1"
    location = "West US"
  }
}

kubernetes_clusters = {
  cluster1 = {
    name                = "sharma-aks-cluster1"
    location            = "central india"
    resource_group_name = "sharma-resource-group1"
    dns_prefix          = "sharmaaks1"
    identity = {
      type = "SystemAssigned"
    }
    default_node_pool = [{
      name       = "cluster1pool"
      node_count = 1
      vm_size    = "Standard_DS2_v2"
    }]
  }
}

container_registries = {
  acr1 = {
    name                = "sharmacontainerregistry1"
    resource_group_name = "sharma-resource-group1"
    location            = "central india"
    sku                 = "Premium"
    admin_enabled       = true
    georeplications = [
      {
        location                = "East US"
        zone_redundancy_enabled = false
        tags = {
          environment = "dev"
        }
      },
      {
        location                = "West US"
        zone_redundancy_enabled = false
        tags = {
          environment = "dev"
        }
      }
    ]
  }
}


mssql_servers = {
  mssql1 = {
    name                         = "sharma-mssql-server1"
    resource_group_name          = "sharma-resource-group1"
    location                     = "central india"
    version                      = "12.0"
    administrator_login          = "mssqladminuser"
    administrator_login_password = "Mssql@12345"
    minimum_tls_version          = "1.2"
    azuread_administrator = {
      login_username = "azureadadminuser1"
    }
  }
}


mssql_databases = {
  db1 = {
    name                 = "sharma-mssql-database1"
    server_name          = "sharma-mssql-server1"
    resource_group_name  = "sharma-resource-group1"
    collation            = "SQL_Latin1_General_CP1_CI_AS"
    license_type         = "BasePrice"
    max_size_gb         = 10
    sku_name             = "S0"
    enclave_type         = "Default"
  }
}