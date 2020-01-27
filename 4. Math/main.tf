variable x {
  default = 20
}

variable y {
  default = 17
}

output "addition" {
  value = "${var.x}+${var.y}=${var.x + var.y}"
}

output "multiplication" {
  value = "${var.x}*${var.y}=${var.x * var.y}"
}

output "division" {
  value = "${var.x}/${var.y}=${var.x / var.y}"
}

output "modulus" {
  value = "${var.x}%${var.y}=${var.x % var.y}"
}