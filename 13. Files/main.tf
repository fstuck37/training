variable tfvariable1 {
  default = "Terraform variables can be sent to vars in a Template file."
}

variable tfvariable2 {
  default = "They can be used to eneter data only avaialble when terraform deployes resources."
}

data "template_file" "file" {
  template = file("${path.module}/files/test.txt")
}

output "rendered" {
  value = data.template_file.file.rendered
}

data "template_file" "file2" {
  template = file("${path.module}/files/test2.txt")

  vars {
    value1 = var.tfvariable1
    value2 = var.tfvariable2
  }
}

output "rendered2" {
  value = data.template_file.file2.rendered
}