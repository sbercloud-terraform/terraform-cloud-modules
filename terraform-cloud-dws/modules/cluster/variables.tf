variable "create" {
  description = "Controls if resources should be created."
  type        = bool
  default     = true
}

variable "region" {
  description = "The region in which to create the cluster resource."
  type        = string
  default     = null
}

variable "name" {
  description = "Cluster name."
  type        = string
}

variable "node_type" {
  description = "Node type."
  type        = string
}

variable "number_of_node" {
  description = "Number of nodes in a cluster."
  type        = number
  default     = null
}

variable "user_name" {
  description = "Administrator username for logging in to a data warehouse cluster."
  type        = string
}

variable "user_pwd" {
  description = "Administrator password for logging in to a data warehouse cluster."
  type        = string
  sensitive   = true
}

variable "vpc_id" {
  description = "VPC ID, which is used for configuring cluster network."
  type        = string
}

variable "network_id" {
  description = "Network ID, which is used for configuring cluster network."
  type        = string
}

variable "security_group_id" {
  description = "ID of a security group."
  type        = string
}

variable "enterprise_project_id" {
  description = "The enterprise project id of the DWS cluster."
  type        = string
  default     = null
}

variable "availability_zone" {
  description = "AZ in a cluster."
  type        = string
  default     = null
}

variable "port" {
  description = "Service port of a cluster."
  type        = number
  default     = null
}

variable "number_of_cn" {
  description = "The number of CN."
  type        = number
  default     = null
}

variable "tags" {
  description = "The key/value pairs to associate with the resource."
  type        = map(string)
  default     = null
}

variable "public_ip" {
  description = "Public ip options."
  type        = list(any)
  default     = []
}

  