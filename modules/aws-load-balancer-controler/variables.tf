variable "project_name" {
  type        = string
  description = "Project name to be used to name de resources (Name Tag)"
}

variable "tags" {
  type        = map(any)
  description = "Default tags to be used on the project"
}

variable "oidc" {
  type        = string
  description = "HTTPS URL from OIDC provider"
}

variable "cluster_name" {
  type        = string
  description = "Cluster Name"
}

variable "vpc_id" {
  type        = string
  description = "VPC id"
}