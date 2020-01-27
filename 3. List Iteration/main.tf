variable "seven" {
  type = list(string)
  default = ["Doc", "Grumpy", "Happy", "Sleepy", "Bashful", "Sneezy", "Dopey"]
}

output "MyFavorite" {
  value = "${var.seven[6]}"
}

output "UsingJoin" {
  value = join("-",var.seven)
}

data "template_file" "tempfile" {
  count = length(var.seven)
  template = "${count.index}. ${var.seven[count.index]}"
}

output "rendered-all" {
  value = data.template_file.tempfile.*.rendered
}

output "rendered-doc" {
  value = data.template_file.tempfile.*.rendered[0]
}