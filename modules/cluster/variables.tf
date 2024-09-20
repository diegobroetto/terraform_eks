
variable "project_name" {
  type        = string
  description = "Project name to be used to name de resources (Name Tag)"
}

variable "tags" {
  type        = map(any)
  description = "Default tags to be used on the project"
}

variable "public_subnet_1a" {
  type        = string
  description = "Public Subnet to create a EKS Cluster AZ 1a"
}

variable "public_subnet_1b" {
  type        = string
  description = "Public Subnet to create a EKS Cluster AZ 1b"
}

variable "kubernetes_version" {
  type        = string
  description = "The Kubernetes version to our cluster"
}