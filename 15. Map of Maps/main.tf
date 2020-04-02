variable "subnets-tags" {
  type = map(map(string))
  default = {
    pub =  {
      pubtag1 = "pubtag1"
    }
    web =  {
      webtag1 = "webtag1"
    }
    app =  {
      apptag1 = "apptag1"
    }
  }
}

variable "tags" {
  type = map(string)
  default = {
    tag1 = "tag1"
    tag2 = "tag2"
    tag3 = "tag3"
  }
}



data "template_file" "tmpfile" {
  template = <<-EOF
${merge({name = "John Doe"},var.tags, (contains(keys(var.subnets-tags),"pub") ? var.subnets-tags["pub"] : {}) )["name"]}
${merge({name = "John Doe"},var.tags, (contains(keys(var.subnets-tags),"pub") ? var.subnets-tags["pub"] : {}) )["tag1"]}
${merge({name = "John Doe"},var.tags, (contains(keys(var.subnets-tags),"pub") ? var.subnets-tags["pub"] : {}) )["pubtag1"]}
  EOF
}

output "rendered" {
  value = data.template_file.tmpfile.rendered
}

