# 🔹 List ชื่อ VM ทั้งหมด
output "vm_names" {
  description = "ชื่อ VM ทั้งหมด"
  value       = azurerm_linux_virtual_machine.vm[*].name
}

# 🔹 List Public IP Address ทั้งหมด
output "public_ips" {
  description = "Public IP ของทุก VM"
  value       = azurerm_public_ip.public_ip[*].ip_address
}

# 🔹 แสดง Public IP แรก (เผื่อใช้ SSH)
output "first_public_ip" {
  description = "Public IP แรก (index 0)"
  value       = azurerm_public_ip.public_ip[0].ip_address
}

# 🔹 แสดง Resource Group Name
output "resource_group_name" {
  description = "ชื่อ Resource Group"
  value       = azurerm_resource_group.rg.name
}
