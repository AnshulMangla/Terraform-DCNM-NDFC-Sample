terraform {
  required_providers {
    dcnm = {
      source = "CiscoDevNet/dcnm"
      version = "1.2.2"
    }
  }
}

## DCNM Provider ##
# provider "dcnm" {
#     username = "admin"
#     password = "pwdxxx"
#     url      = "https://10.X.X.X:8443"
#     insecure = true
# }

## NDFC Provider ##
provider "dcnm" {
    username = "admin"
    password = "pwdxxx"
    url      = "https://10.X.X.X"
    insecure = true
    platform = "nd"
}

resource "dcnm_vrf" "test-vrf" {
  fabric_name = "Test"
  name = "Test_VRF"
  description = "This vrf is created by terraform"
  deploy = false
}

resource "dcnm_template" "example1" {
  name = "test"
  content = file("template.txt")
  description = "Test"
  supported_platforms = ["N9K","N3K"]
  template_type="POLICY"
  template_content_type="TEMPLATE_CLI"
  tags="tag1"
  template_sub_type="VXLAN"
}
