terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0.1"
    }
  }
}

provider "docker" {}

resource "docker_image" "recruitment_rank_app" {
  name         = "03sarath/recruitment-rank-app:v1"
  keep_locally = false
}

resource "docker_container" "recruitment_rank_app" {
  image = docker_image.recruitment_rank_app.image_id
  name  = var.container_name

  ports {
    internal = 9696
    external = 9696
  }
}
