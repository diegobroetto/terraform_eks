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
  default     = ["t3.medium"]
}