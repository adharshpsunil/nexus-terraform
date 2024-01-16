terraform {
  required_providers {
    nexus = {
      source = "datadrivers/nexus"
      version = "1.21.0"
    }
  }
}

provider "nexus" {
  insecure = true
  password = "6dadmin6dadmin"
  url      = "http://10.0.12.105:8081"
  username = "admin"

}




