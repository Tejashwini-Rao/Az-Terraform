module "components" {
  for_each = var.components
  source = "./vm"
  component = each.value["name"]
  vm_size = each.value["vm_size"]

}

variable "components" {

  default = {

    frontend = {
        name  = "frontend"
      vm_size = "Standard_DS1_v2"

    }

    mongodb = {
      name  = "mongodb"
      vm_size = "Standard_DS1_v2"

    }

    catalogue = {
      name  = "catalogue"
      vm_size = "Standard_DS1_v2"

    }

    cart = {
      name  = "cart"
      vm_size = "Standard_DS1_v2"

    }

    redis = {
      name  = "redis"
      vm_size = "Standard_DS1_v2"

    }
    shipping = {
      name  = "shipping"
      vm_size = "Standard_DS1_v2"

    }
    mysql = {
      name  = "mysql"
      vm_size = "Standard_DS1_v2"

    }

    payment = {
      name  = "payment"
      vm_size = "Standard_DS1_v2"

    }

    rabbitmq = {
      name  = "rabbitmq"
      vm_size = "Standard_DS1_v2"

    }

    user = {
      name  = "user"
      vm_size = "Standard_DS1_v2"

    }


  }
}

variable "env" {
  env = "dev"
}