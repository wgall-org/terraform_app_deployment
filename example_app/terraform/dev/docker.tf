resource "null_resource" "docker-compose" {
    provisioner "local-exec" {

        command = "./resources/composeup.sh"

    }
}