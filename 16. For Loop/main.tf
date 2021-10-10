locals {
 setpl = setproduct(var.listtx,var.listtx)
 setp =  (toset([ for v in local.setpl : tolist(toset(v)) if length(toset(v)) != 1]))
 setpr =  [ for v in local.setp : tolist(reverse(v))]
 names =  [for v in local.setp : "${tolist(v)[0]}"]
}

variable "listtx" {
  type = list(map(string))
  default = [
    {
      id = "1"
      region = "us-east-1"
    },
    {
      id = "2"
      region = "us-west-2"
    },
    {
      id = "3"
      region = "eu-west-1"
    },
    {
      id = "4"
      region = "eu-west-2"
    },
    {
      id = "5"
      region = "ap-southeast-1"
    },
    {
      id = "6"
      region = "ap-southeast-2"
    }
  ]
}


/* Change current to 1, 2, 3, 4, 5, 6 */

variable "current" {
  default = "4" 
}

output "links-src" {
 value = data.template_file.links-src
}

output "links-dest" {
 value = data.template_file.links-dest
}



data "template_file" "links-src" {
  for_each = { for link in tolist(local.setp) : "${tolist(link)[0].id}_${tolist(link)[1].id}" => (link)
   if tolist(link)[0].id == var.current
  }
template = <<-EOF
Name ${each.key}
source id = ${each.value[0].id}
source reg = ${each.value[0].region}
dest id = ${each.value[1].id}
dest reg = ${each.value[1].region}
EOF
}

data "template_file" "links-dest" {
  for_each = { for link in tolist(local.setpr) : "${tolist(link)[0].id}_${tolist(link)[1].id}" => (link)
   if tolist(link)[0].id == var.current
  }
template = <<-EOF
Name ${each.key}
source id = ${each.value[0].id}
source reg = ${each.value[0].region}
dest id = ${each.value[1].id}
dest reg = ${each.value[1].region}
EOF
}
