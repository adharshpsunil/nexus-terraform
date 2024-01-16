resource "nexus_security_user" "ventas-maven" {
  userid    = "ventas-maven"
  firstname = "smart-ventas"
  lastname  = "maven"
  email     = "adharsh.sunil@6dtech.co.in"
  password  = "maven12345"
  roles     = ["nx-admin"]
  status    = "active"
}

resource "nexus_security_user" "ventas-docker" {
  userid    = "ventas-docker"
  firstname = "smart-ventas"
  lastname  = "docker"
  email     = "adharsh.sunil@6dtech.co.in"
  password  = "docker12345"
  roles     = ["docker-deploy"]
  status    = "active"
}
