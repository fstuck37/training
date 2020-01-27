variable text {
  type = list(string)
  default = ["0. List are zero based. So the first element is 0.", "1. Hello World!", "2. Not this one", "3. Good Bye!"]
}

output "HelloWorld" {
  value = var.text[1]
}

output "GoodBye" {
  value = var.text[3]
}

output "SizeOfList" {
  value = "The size (or length) of the list is ${length(var.text)}. This means it has ${length(var.text)} items from 0 to ${length(var.text) - 1}."
}