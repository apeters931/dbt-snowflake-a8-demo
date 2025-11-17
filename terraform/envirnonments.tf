resource "dbtcloud_environment" "ci_environment" {
  // the dbt_version is major.minor.0-latest , major.minor.0-pre, compatible, extended, versionless, latest or latest-fusion (by default, it is set to latest if not configured)
  dbt_version   = "latest"
  name          = "CICD"
  project_id    = dbtcloud_project.dbt_project.id
  type          = "deployment"
}