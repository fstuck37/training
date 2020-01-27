variable "seven" {
  type = "list"
  default = ["Doc", "Grumpy", "Happy", "Sleepy", "Bashful", "Sneezy", "Dopey"]
}

data "template_file" "tmpfile" {
  count = "${length(var.seven)}"
  template = <<-EOF
${count.index+1}. ${var.seven[count.index]}
Modulus ${count.index}%3=${count.index%3}
Multiply ${count.index}*3=${count.index*3}
Divide ${count.index}/3=${count.index/3}
  EOF
}

output "rendered-all" {
  value = data.template_file.tmpfile.*.rendered
}

output "rendered-happy" {
  value = data.template_file.tmpfile.*.rendered[2]
}
