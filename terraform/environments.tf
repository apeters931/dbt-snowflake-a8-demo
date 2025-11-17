# --- 1. Production Deployment Environment ---
resource "dbtcloud_environment" "production" {
  # Required arguments
  project_id    = var.dbt_project_id
  name          = "Production"
  type          = "deployment"
  dbt_version   = "1.7.0"
  
  # Configuration for Deployment Environments
  deployment_type = "production"
  custom_branch   = "" # Leave empty if tracking the main repository branch
}

# --- 2. Staging Deployment Environment (Optional) ---
resource "dbtcloud_environment" "staging" {
  project_id    = var.dbt_project_id
  name          = "Staging"
  type          = "deployment"
  dbt_version   = "1.7.0"
  
  # Use 'staging' deployment type for comparison/testing against production
  deployment_type = "staging" 
  
  # For staging, you might point to a dedicated staging branch if not using the main branch
  custom_branch   = "staging" 
}

# --- 3. Continuous Integration (CI) / Development Environment ---
resource "dbtcloud_environment" "ci" {
  project_id    = var.dbt_project_id
  name          = "CI"
  # This environment type is used for development purposes and CI checks.
  type          = "development" 
  dbt_version   = "1.7.0"
  
  # These arguments are not used for development environments
  deployment_type = null 
  custom_branch   = null 
  
}
