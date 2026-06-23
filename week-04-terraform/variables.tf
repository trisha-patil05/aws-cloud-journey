variable "nginx_port" {
  description = "External port for Nginx container"
  type        = number
  default     = 8080
}

variable "container_name" {
  description = "Name of the Docker container"
  type        = string
  default     = "terraform-nginx"
}

variable "nginx_image" {
  description = "Nginx Docker image"
  type        = string
  default     = "nginx:latest"
}