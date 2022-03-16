terraform {
  required_providers {
    mso = {
      source = "CiscoDevNet/mso"
    }
  }
}
provider "mso" {
    # cisco-mso user name
    username = var.nd_username
    # cisco-mso password
    password = var.nd_password
    # cisco-mso url
    url      = var.nd_url
    platform = var.platform
}

data "mso_user" "user" {
  username = "admin"
}

data "mso_site" "Site01" {
  name  = "ACI-01"
}

data "mso_site" "Site02" {
  name  = "ACI-02"
}

output "user" {
  value = data.mso_user.user
}

output "Site01" {
  value = data.mso_site.Site01
}

output "Site02" {
  value = data.mso_site.Site02
}
