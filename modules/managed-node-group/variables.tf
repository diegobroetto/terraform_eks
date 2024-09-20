
variable "project_name" {
  type        = string
  description = "Project name to be used to name de resources (Name Tag)"
}

variable "tags" {
  type        = map(any)
  description = "Default tags to be used on the project"
}

variable "cluster_name" {
  type        = string
  description = "EKS cluster name to create de MNG"
}

variable "private_subnet_1a" {
  type        = string
  description = "Private Subnet to create a EKS Cluster AZ 1a"
}

variable "private_subnet_1b" {
  type        = string
  description = "Private Subnet to create a EKS Cluster AZ 1b"
}

variable "instance_types" {
  type        = list(string)
  description = "List of permitted types of instances"
}
