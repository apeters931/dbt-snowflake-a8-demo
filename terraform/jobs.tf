# PRODUCTION
# Production Deployment Job
resource "dbtcloud_job" "prod_deploy_job" {
  project_id    = var.dbt_project_id
  environment_id = dbtcloud_environment.prod_env.id
  name          = "Production Deploy"
  execute_steps = [
    "dbt build --select state:modified+",
  ]
  schedule_type = "custom" // API-only trigger
  is_active     = true
}

# Production Full Refresh Job
resource "dbtcloud_job" "prod_full_refresh_job" {
  project_id    = var.dbt_project_id
  environment_id = dbtcloud_environment.prod_env.id
  name          = "Production Full Refresh"
  execute_steps = [
    "dbt build"
  ]
  schedule_type   = "custom"
  is_active       = true
}

# STAGING
# Staging Deployment Job
resource "dbtcloud_job" "staging_deploy_job" {
  project_id    = var.dbt_project_id
  environment_id = dbtcloud_environment.staging_env.id
  name          = "Staging Deploy"
  execute_steps = [
    "dbt build --select state:modified+",
  ]
  continuous_deployment = true
  schedule_type = "custom" // API-only trigger
  is_active     = true
}

# Staging Full Refresh Job
resource "dbtcloud_job" "staging_full_refresh_job" {
  project_id    = var.dbt_project_id
  environment_id = dbtcloud_environment.staging_env.id
  name          = "Staging Full Refresh"
  execute_steps = [
    "dbt build"
  ]
  schedule_type   = "custom"
  is_active       = true
}

# CI
# CI Job
resource "dbtcloud_job" "ci_job" {
  project_id    = var.dbt_project_id
  environment_id = dbtcloud_environment.ci_env.id
  name          = "CI Job"
  execute_steps = [
    "dbt build --select state:modified+",
  ]
  run_on_pull_request   = trueqaw
  schedule_type = "custom" // API-only trigger
  is_active     = true
}
