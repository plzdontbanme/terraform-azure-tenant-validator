# Get the Azure client data
data "azuread_client_config" "current" {}

module "assertion" {
  source  = "plzdontbanme/assertion/null"
  version = "0.0.0"
  # As an example, we check that the tenant ID is correct
  condition     = data.azuread_client_config.current.tenant_id == var.tenant_id
  error_message = "This configuration is being applied to the wrong tenant!!"
}
