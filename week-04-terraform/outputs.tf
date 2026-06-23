output "container_name" {
  description = "Name of the running container"
  value       = docker_container.nginx.name
}

output "container_port" {
  description = "External port of the container"
  value       = var.nginx_port
}

output "access_url" {
  description = "URL to access the application"
  value       = "http://localhost:${var.nginx_port}"
}