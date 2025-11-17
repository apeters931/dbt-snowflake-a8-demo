variable "dbt_project_id" {
  description = "The ID of the dbt Cloud project where all resources should be deployed."
  type        = number
}

variable "snowflake_prod_credential_id" {
  description = "The ID of the Snowflake credential for the Production environment."
  type        = number
  sensitive   = true
}

variable "snowflake_staging_credential_id" {
  description = "The ID of the Snowflake credential for the Staging environment."
  type        = number
  sensitive   = true
}

variable "snowflake_ci_credential_id" {
  description = "The ID of the Snowflake credential for the CI environment."
  type        = number
  sensitive   = true
}
