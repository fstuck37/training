variable "option1" {
  default = "1"
}

variable "option2" {
  default = "2"
}

variable "option3" {
  default = "3"
}

// The coalesce function returns the first none-blank string.
// Try entering values option1 and/or option2 and see what happens to the output.
// This is a good way to have optional parameters to your code.
// For example option1 could be a direct user inputed value, option2 could be based on a list or some other parameters, and options3 can be the default.
output "doc-rendered-join" {
  value = "${coalesce(var.option1,var.option2,var.option3)}"
}
