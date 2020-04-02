module "iterator" {
  source       = "git::https://github.com/fstuck37/doubleiterator.git"
  e1-size = 5
  e2-size = 3
}

output "e1-list" {
  value = module.iterator.e1-list
}

output "e2-list" {
    value = module.iterator.e2-list
}
