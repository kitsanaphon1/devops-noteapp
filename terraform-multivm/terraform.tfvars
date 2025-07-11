resource_group_name = "rg-terraform-multi"
location            = "Southeast Asia"
prefix              = "sooya"
address_space       = ["10.0.0.0/16"]
subnet_prefixes     = ["10.0.1.0/24"]
vm_size             = "Standard_B1s"
admin_username      = "azureuser"
public_key_path     = "/home/sooya/terraform-keys/id_rsa_ansible_final.pub"
image_publisher     = "Canonical"
image_offer         = "UbuntuServer"
image_sku           = "18.04-LTS"
image_version       = "latest"
vm_count            = 3
