output "shm_size" {
    description = "shm size"
    value = docker_container.nginx.shm_size
}
output "name" {
    description = "name"
    value = docker_container.nginx.name
}