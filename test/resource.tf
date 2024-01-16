resource "nexus_repository_maven_hosted" "releases" {
  name   = "maven-ventas"
  online = true

  storage {
    blob_store_name                = "default"
    strict_content_type_validation = false
    write_policy                   = "ALLOW"
  }

  maven {
    version_policy      = "RELEASE"
    layout_policy       = "STRICT"
    content_disposition = "INLINE"
  }
}

resource "nexus_repository_docker_hosted" "docker-ventas" {
  name   = "docker-ventas"
  online = true

  docker {
    force_basic_auth = false
    v1_enabled       = false
  }

  storage {
    blob_store_name                = "default"
    strict_content_type_validation = true
    write_policy                   = "ALLOW"
}


}

# resource "nexus_repository_maven_group" "group" {
#   name   = "ventas-maven-group"
#   online = true

#   group {
#     member_names = [
#      nexus_repository_maven_hosted.releases.maven-ventas,
#     ]
#   }

#   storage {
#     blob_store_name                = "default"
#     strict_content_type_validation = true
#   }
# }

# resource "nexus_repository_maven_hosted" "releases" {
#   name   = "maven-test"
#   online = true

#   storage {
#     blob_store_name                = "default"
#     strict_content_type_validation = false
#     write_policy                   = "ALLOW"
#   }

#   maven {
#     version_policy      = "RELEASE"
#     layout_policy       = "STRICT"
#     content_disposition = "INLINE"
#   }
# }


resource "nexus_repository_maven_group" "group" {
  name   = "maven-ventas-test"
  online = true

  group {
    member_names = [
      nexus_repository_maven_hosted.releases.name,
    ]
  }

  storage {
    blob_store_name                = "default"
    strict_content_type_validation = true
  }
}