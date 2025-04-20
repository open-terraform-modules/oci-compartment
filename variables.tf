variable "compartment_id" {
  description = "(Required) The OCID of the parent compartment where the new compartment will be created."
  type        = string
}

variable "name" {
  description = "(Required) The name of the compartment. It must be unique within the parent compartment."
  type        = string
}

variable "description" {
  description = "(Optional) A user-friendly description of the compartment."
  type        = string
  default     = null
}

variable "freeform_tags" {
  description = "(Optional) A map of free-form tags to assign to the compartment."
  type        = map(string)
  default     = {}
}