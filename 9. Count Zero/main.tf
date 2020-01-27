variable "seven" {
  type = "list"
  default = ["Doc", "Grumpy", "Happy", "Sleepy", "Bashful", "Sneezy", "Dopey"]
}

data "template_file" "zero" {
  count = 0
  template = count.index}. ${var.seven[count.index]
}

data "template_file" "seven" {
  count = length(var.seven)
  template = "${count.index}. ${var.seven[count.index]}"
}

output "seven-rendered" {
  value = data.template_file.seven.*.rendered
}

output "zero-rendered" {
  value = "'${join(",",data.template_file.zero.*.rendered)}' Because template_file.zero has a count of 0 it doesn't create it. So when referencing it with the splat notation it returns an empty list. I added the quotes around it to show the join command doesn't return anything."
}
