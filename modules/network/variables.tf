variable "cidr_block" {
  type        = string
  description = "Networking CIDR block to be used for the VPC"
}

variable "project_name" {
  type        = string
  description = "Project name to be used to name de resources (Name Tag)"
}

variable "tags" {
  type        = map(any)
  description = "Default tags to be used on the project"
}