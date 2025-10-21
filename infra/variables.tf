variable "resource_group_name" {
  description = "Name of the existing resource group"
  type        = string
  default     = "Milos-Belic-Candidate"
}

variable "location" {
  description = "Azure region"
  type        = string
  default     = "West Europe"
}

variable "cluster_name" {
  description = "AKS cluster name"
  type        = string
  default     = "aks-devops-task"
}