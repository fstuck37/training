variable x {
  default = [0,1,2,3,4]
}

variable y {
  default = ["a","b","c"]
}

locals {
  double = flatten([
    for x in var.x : [
      for y in var.y : {
        "x" = x
        "y" = y
    }]
  ])
}

output "dub" {
    value = local.double
}

output "dub-0-x" {
    value = local.double[0]["x"]
}

output "dub-0-y" {
    value = local.double[0]["y"]
}
