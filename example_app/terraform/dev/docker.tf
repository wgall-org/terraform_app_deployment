resource "null_resource" "docker-compose" {
    provisioner "local-exec" {

        command = "cd resources; ./composeup.sh"

    }
}