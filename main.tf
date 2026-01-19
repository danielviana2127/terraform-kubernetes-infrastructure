terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0"
    }
  }
}

provider "docker" {}

# Cria uma network Docker
resource "docker_network" "app_network" {
  name = var.network_name
}

# Baixa a imagem do Nginx
resource "docker_image" "nginx_image" {
  name         = var.image_name
  keep_locally = false
}

# Cria o container Nginx
resource "docker_container" "nginx_container" {
  name  = var.container_name
  image = docker_image.nginx_image.image_id

  ports {
    internal = 80
    external = var.external_port
  }

  networks_advanced {
    name = docker_network.app_network.name
  }
}
