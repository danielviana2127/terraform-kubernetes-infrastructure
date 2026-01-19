output "container_name" {
  description = "Nome do container criado"
  value       = docker_container.nginx_container.name
}

output "container_port" {
  description = "Porta externa exposta"
  value       = var.external_port
}

output "container_url" {
  description = "URL para acessar o Nginx"
  value       = "http://localhost:${var.external_port}"
}
