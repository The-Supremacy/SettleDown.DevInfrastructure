module "acr" {
  source             = "github.com/The-Supremacy/SettleDown.InfrastructureModules//container_registry"
  azure_cicd_sp_name = var.azure_cicd_sp_name
  tags = {
    Area        = "Dev infrastructure"
    Environment = "Shared"
  }
}