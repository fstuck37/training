variable "condition" {
  default = "doc"
}

variable "seven" {
  type = list(string)
  default = ["Doc", "Grumpy", "Happy", "Sleepy", "Bashful", "Sneezy", "Dopey"]
}

data "template_file" "doc" {
  count = var.condition == "doc" ? 1 : 0
  template = "The variable condition is equal to Doc."
}

//What happens when condition is not 'doc'? Does this work?
output "doc-rendered" {
  value = data.template_file.doc.*.rendered[0]
}

// (NOTE: Remove the output doc-rendered to test with just this one and enter something other 
// than "doc" for the condition variable's value. This is useful when you want to conditionally
// deploy something but also want to output some of it's values when you do.)
output "doc-rendered-join" {
  value = join(",",data.template_file.doc.*.rendered)
}


data "template_file" "doc2" {
  count = var.condition == "doc" ? (var.condition2 == "ument" ? 1 : 0) : 0
  template = "The variable condition is equal to Doc."
}