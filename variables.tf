variable "name" {
  description = "The name of the resource share"
  type        = string
}

variable "allow_external_principals" {
  description = "Indicates whether principals outside your organization can be associated with a resource share"
  default     = false
  type        = bool
}

variable "resource_arns" {
  description = "Arns of resource for association"
  type        = map(any)
}

variable "principal" {
  description = "Arn of organization or account id to associate"
  type        = string
}

variable "tags" {
  description = "A map of tags to add to all resources"
  type        = map(string)
  default     = {}
}
