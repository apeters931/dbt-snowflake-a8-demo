# Production Environment
resource "dbtcloud_environment" "prod_env" {
  project_id      = var.dbt_project_id
  name            = "Production"
  dbt_version     = "1.7.0" # Please change this if you are using a different version
  type            = "deployment"
  use_custom_branch = false
  custom_branch   = "main"
  credential_id   = var.snowflake_prod_credential_id
}

# Staging Environment
resource "dbtcloud_environment" "staging_env" {
  project_id      = var.dbt_project_id
  name            = "Staging"
  dbt_version     = "1.7.0" # Please change this if you are using a different version
  type            = "deployment"
  use_custom_branch = true
  custom_branch   = "main"
  credential_id   = var.snowflake_staging_credential_id
}

# CI Environment
resource "dbtcloud_environment" "ci_env" {
  project_id      = var.dbt_project_id
  name            = "CI"
  dbt_version     = "1.7.0" # Please change this if you are using a different version
  type            = "development"
  credential_id   = var.snowflake_ci_credential_id
}
