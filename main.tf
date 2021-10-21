terraform {
  required_providers {
    dcnm = {
      source = "CiscoDevNet/dcnm"
      version = "1.0.0"
    }
  }
}

provider "dcnm" {
    username = "admin"
    password = "cisco!123"
    url      = "https://10.106.236.45:8443"
    insecure = true
}

resource "dcnm_vrf" "test-vrf" {
  fabric_name = "Test"
  name = "Anshul_VRF"
  description = "This vrf is created by terraform"
  deploy = false
}


# resource "dcnm_vrf" "test-vrf" {
#   fabric_name = "Import_Fabric"
#   name = "Anshul_VRF"
#   description = "This vrf is created by terraform"
#   deploy = false
# }

# resource "dcnm_network" "first" {
#   fabric_name     = "Import_Fabric"
#   name            = "MyNetwork_30002"
#   network_id      = "30002"
#   display_name    = "MyNetwork_30002"
#   description     = "first network from terraform"
#   vrf_name        = "MyVRF_50000"
#   vlan_name       = ""
#   ipv4_gateway    = ""
#   ipv6_gateway    = ""
#   secondary_gw_1  = ""
#   secondary_gw_2  = ""
#   arp_supp_flag   = false
#   ir_enable_flag  = false
#   mcast_group     = "239.1.1.0"
#   dhcp_1          = ""
#   dhcp_2          = ""
#   dhcp_vrf        = ""
#   tag             = "12345"
#   rt_both_flag    = false
#   trm_enable_flag = false
#   l3_gateway_flag = false

#   deploy = false
# }