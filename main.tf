variable "compartment_ocid" {}
variable "region" {}
variable "display_name_prefix" {}

resource "null_resource" "git_backend" {
  provisioner "local-exec" {
    command = "echo \"testing git backend from Github private repo\""
  }
}

resource "oci_core_virtual_network" "vcn1" {
  cidr_block = "10.0.0.0/16"
  dns_label = "vcn1"
  compartment_id = "${var.compartment_ocid}"
  display_name = "${var.display_name_prefix}VCN1-1 for maestro-integ-tests"
}

