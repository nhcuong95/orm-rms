variable "compartment_ocid" {}
variable "region" {}
variable "display_name_prefix" {}

resource "null_resource" "git_backend" {
  provisioner "local-exec" {
    command = "echo \"testing git backend from Github private repo\""
  }
}
