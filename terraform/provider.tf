# 1. Terraform Block: Define the required provider and its source/version
terraform {
  required_providers {
    dbtcloud = {
      source  = "dbt-labs/dbtcloud"
      # Use a specific version or a range like this:
      version = "~> 1.0"
    }
  }
}

# 2. Provider Configuration Block: Define the provider
# This block is empty because it relies on environment variables:
# - DBT_CLOUD_ACCOUNT_ID
# - DBT_CLOUD_TOKEN
provider "dbtcloud" {}
