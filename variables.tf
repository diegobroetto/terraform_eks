variable "cidr_block" {
  type        = string
  description = "Networking CIDR block to be used for the VPC"
}

variable "project_name" {
  type        = string
  description = "Project name to be used to name de resources (Name Tag)"
}


variable "instance_types" {
  type        = list(string)
  description = "List of EC2 Instance Types for Nodes"
  default     = ["t3.large"]
}

variable "region" {
  type        = string
  description = "AWS Region to create your project"
}

variable "tags" {
  type        = map(any)
  description = "A map of tags to add to all resources"
}

variable "kubernetes_version" {
  type        = string
  default     = "1.30"
  description = "The Kubernetes version to our cluster"
}