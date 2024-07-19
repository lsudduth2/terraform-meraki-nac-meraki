terraform {
  required_version = ">= 1.3.0"

  required_providers {
    meraki = {
      source  = "core-infra-svcs/meraki"
      version = ">= 0.11.1"
    }
    utils = {
      source  = "netascode/utils"
      version = ">= 0.2.5"
    }
    local = {
      source  = "hashicorp/local"
      version = ">= 2.3.0"
    }
  }
}
provider "meraki" {
  meraki_debug = true
  meraki_requests_per_second = 2
  meraki_base_url = var.base_url
  // Add other provider-specific options if needed
}
