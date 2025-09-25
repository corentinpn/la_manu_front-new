terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "3.0.2"
    }
  }
}

provider "docker" {
  host = "unix:///var/run/docker.sock"
}

resource "docker_image" "ubuntu" {
  name = "ubuntu:latest"
}

resource "docker_container" "foo" {
  image = docker_image.ubuntu.image_id
  name  = "foo"

  ports {
    internal = 22
    external = 2222
  }

  command = ["sleep", "infinity"]
}
