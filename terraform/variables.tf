variable "dbt_project_id" {
  description = "The ID of the dbt Cloud project where all resources should be deployed."
  type        = number
}

variable "git_repository_id" {
  description = "The unique numeric ID of the Git repository (e.g., GitHub repo ID)."
  type        = number
}
