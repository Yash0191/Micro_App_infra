terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.54.0"
    }
  }
}

provider "azurerm" {
    features {}
    subscription_id = "49c47d3a-ee46-467f-b8ac-06b906f03845"
}