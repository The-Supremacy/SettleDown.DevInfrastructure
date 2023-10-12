module "acr" {
  source             = "./modules/container_registry"
  azure_cicd_sp_name = var.azure_cicd_sp_name
}