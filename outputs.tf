output "data_source_permissions_id" {
  description = "Map of id values across all data_source_permissions, keyed the same as var.data_source_permissions except keys with no id are omitted"
  value       = { for k, v in grafana_data_source_permission.data_source_permissions : k => v.id if v.id != null && length(v.id) > 0 }
}
output "data_source_permissions_datasource_type" {
  description = "Map of datasource_type values across all data_source_permissions, keyed the same as var.data_source_permissions except keys with no datasource_type are omitted"
  value       = { for k, v in grafana_data_source_permission.data_source_permissions : k => v.datasource_type if v.datasource_type != null && length(v.datasource_type) > 0 }
}
output "data_source_permissions_datasource_uid" {
  description = "Map of datasource_uid values across all data_source_permissions, keyed the same as var.data_source_permissions except keys with no datasource_uid are omitted"
  value       = { for k, v in grafana_data_source_permission.data_source_permissions : k => v.datasource_uid if v.datasource_uid != null && length(v.datasource_uid) > 0 }
}
output "data_source_permissions_org_id" {
  description = "Map of org_id values across all data_source_permissions, keyed the same as var.data_source_permissions except keys with no org_id are omitted"
  value       = { for k, v in grafana_data_source_permission.data_source_permissions : k => v.org_id if v.org_id != null && length(v.org_id) > 0 }
}
output "data_source_permissions_permissions" {
  description = "Map of permissions values across all data_source_permissions, keyed the same as var.data_source_permissions except keys with no permissions are omitted"
  value       = { for k, v in grafana_data_source_permission.data_source_permissions : k => v.permissions if v.permissions != null && length(v.permissions) > 0 }
}

