variable "image_name" {
  description = "Imagem Docker utilizada"
  type        = string
  default     = "nginx:latest"
}

variable "container_name" {
  description = "Nome do container Docker"
  type        = string
  default     = "nginx-terraform"
}

variable "network_name" {
  description = "Nome da network Docker"
  type        = string
  default     = "terraform-network"
}

variable "external_port" {
  description = "Porta externa para acesso ao Nginx"
  type        = number
  default     = 8080
}
