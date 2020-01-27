variable "region1" {
  default = "us-east-1"
}

variable "region2" {
  default = "ca-central-1"
}

variable "region3" {
  default = "ap-south-1"
}

variable "zones" {
  type = map(string)
  default = {
    us-east-1 = "US East (N. Virginia)"
    us-east-2 = "US East (Ohio)"
    us-west-1 = "US West (N. California)"
    us-west-2 = "US West (Oregon)"
    ca-central-1 = "Canada (Central)"
    eu-west-1 = "EU (Ireland)"
    eu-central-1 = "EU (Frankfurt)"
    eu-west-2 = "EU (London)"
    ap-northeast-1 = "Asia Pacific (Tokyo)"
    ap-northeast-2 = "Asia Pacific (Seoul)"
    ap-southeast-1 = "Asia Pacific (Singapore)"
    ap-southeast-2 = "Asia Pacific (Sydney)"
    ap-south-1 = "Asia Pacific (Mumbai)"
    sa-east-1 = "South America (Sao Paulo)"
  }
}

data "template_file" "tmpfile" {
  template = <<-EOF
${var.zones[var.region1]}
${var.zones[var.region2]}
${var.zones[var.region3]}
  EOF
}

output "rendered" {
  value = data.template_file.tmpfile.rendered
}

output "full-map" {
  value = var.zones
}

output "region1" {
  value = var.zones[var.region1]
}