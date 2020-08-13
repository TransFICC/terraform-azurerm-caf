
module "subscriptions" {
  source = "/tf/caf/modules/subscriptions"

  for_each = var.subscriptions

  global_settings         = var.global_settings
  subscription_key        = each.key
  subscription            = each.value
  primary_subscription_id = data.azurerm_subscription.primary.subscription_id
  diagnostics             = local.diagnostics
}