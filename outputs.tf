output "dashboard_permissions_id" {
  description = "Map of id values across all dashboard_permissions, keyed the same as var.dashboard_permissions except keys with no id are omitted"
  value       = { for k, v in grafana_dashboard_permission.dashboard_permissions : k => v.id if v.id != null && length(v.id) > 0 }
}
output "dashboard_permissions_dashboard_uid" {
  description = "Map of dashboard_uid values across all dashboard_permissions, keyed the same as var.dashboard_permissions except keys with no dashboard_uid are omitted"
  value       = { for k, v in grafana_dashboard_permission.dashboard_permissions : k => v.dashboard_uid if v.dashboard_uid != null && length(v.dashboard_uid) > 0 }
}
output "dashboard_permissions_org_id" {
  description = "Map of org_id values across all dashboard_permissions, keyed the same as var.dashboard_permissions except keys with no org_id are omitted"
  value       = { for k, v in grafana_dashboard_permission.dashboard_permissions : k => v.org_id if v.org_id != null && length(v.org_id) > 0 }
}
output "dashboard_permissions_permissions" {
  description = "Map of permissions values across all dashboard_permissions, keyed the same as var.dashboard_permissions except keys with no permissions are omitted"
  value       = { for k, v in grafana_dashboard_permission.dashboard_permissions : k => v.permissions if v.permissions != null && length(v.permissions) > 0 }
}

