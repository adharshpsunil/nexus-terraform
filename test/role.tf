resource "nexus_security_role" "nx_administrator" {
  roleid      = "nx_administrator"
  name        = "nx-admin"
  description = "Administrator role"
  privileges  = ["nx-all"]
  roles       = []
}


resource "nexus_security_role" "docker_deploy" {
  description = "Docker deployment role"
  name        = "docker-deploy"
  privileges = [
    "nx-repository-view-docker-*-*",
  ]
  roleid = "docker-deploy"
}