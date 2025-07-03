variable "resource_group_name" {}
variable "location" {}
variable "prefix" {}
variable "address_space" {}
variable "subnet_prefixes" {}
variable "vm_size" {}
variable "admin_username" {}
variable "public_key_path" {}
variable "image_publisher" {}
variable "image_offer" {}
variable "image_sku" {}
variable "image_version" {}
variable "vm_count" {
  description = "จำนวน VM ที่ต้องการสร้าง"
  default     = 2
}
