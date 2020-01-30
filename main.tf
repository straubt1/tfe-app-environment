
resource "random_uuid" "my-uuid" {}

resource "random_uuid" "new-uuid" {}

variable "name" {}
variable "location" {}

resource "azurerm_resource_group" "module" {
  name     = "${var.name}-rg"
  location = "${var.location}"

  tags = {
    a = "Development"
    b       = "Tom"
  }
}
