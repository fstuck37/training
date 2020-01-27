variable "cidr" {
  default = "10.10.0.0/16"
}

data "template_file" "script" {
  count = "64"
  template = <<-EOF
${count.index+1}: ${ cidrsubnet(var.cidr, 6, count.index)}"
  EOF
}

output "rendered" {
  value = data.template_file.script.*.rendered
}