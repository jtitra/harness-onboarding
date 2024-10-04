//Define Valid Variables
variable "instance_type" {
  type = string
}

variable "tags" {
  description = "Tags to set on the provisioned resources."
  type        = map(string)
  default     = {}
}
