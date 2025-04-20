resource "oci_identity_compartment" "main" {
  compartment_id = var.compartment_id
  name           = var.name
  description    = var.description
  freeform_tags  = var.freeform_tags
}