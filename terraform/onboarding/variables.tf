// Define Valid Variables

// Platform
variable "account_id" {
  type    = string
}

variable "org_id" {
  type    = string
}

variable "project_id" {
  type = string
}

variable "api_key" {
  type = string
  sensitive = true
}

// Repo
variable "new_repo_id" {
  type = string
}

variable "github_repo_to_clone" {
  type = string
}

// Workspace
variable "workspace_name" {
  type = string
}

variable "workspace_repository_path" {
  type = string
}

variable "workspace_provider_connector" {
  type = string
}

variable "instance_type" {
  type = string
}
