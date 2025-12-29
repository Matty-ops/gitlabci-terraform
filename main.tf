# Définition d'une ressource factice pour les tests
resource "null_resource" "example_iac_module" {
  provisioner "local-exec" {
    command = "echo 'Terraform module is defined'"
  }
}

variable "example_variable" {
  description = "Variable d'exemple pour les tests de documentation."
  type        = string
  default     = "test"
}

output "example_output" {
  value = "Module OK"
}
