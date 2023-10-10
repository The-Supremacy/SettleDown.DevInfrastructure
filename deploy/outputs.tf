output "rg_name" {
  value = module.acr.rg_name
}

output "acr_name" {
  value = module.acr.acr_name
}

output "acr_login_server" {
  value = module.acr.acr_login_server
}

output "acr_login_admin_username" {
  value = module.acr.acr_login_admin_username
}

output "acr_login_admin_password" {
  value = module.acr.acr_login_admin_password
  sensitive = true
}