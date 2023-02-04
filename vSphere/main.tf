terraform {
  required_providers {
    vsphere = {
        source = "hashicorp/vsphere"
        version = ">=2.0"
    }
  }
}

provider "vsphere" {
  user =  "administrator@vsphere.local"
  password = "*******"
  vsphere_server = "vcenter.homelab.com"
  allow_unverified_ssl = true
}

data "vsphere_datacenter" "dc" {}

resource "vsphere_folder" "parent" {
  path = "VMworld"
  type = "vm"
  datacenter_id = data.vsphere_datacenter.dc.id
  
} 




## After that simply fire 

terrform plan

terrform apply
