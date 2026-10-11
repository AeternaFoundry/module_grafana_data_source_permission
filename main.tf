resource "grafana_data_source_permission" "data_source_permissions" {
  for_each = var.data_source_permissions

  datasource_uid  = each.value.datasource_uid
  datasource_type = each.value.datasource_type
  org_id          = each.value.org_id

  dynamic "permissions" {
    for_each = each.value.permissions != null ? each.value.permissions : []
    content {
      built_in_role = permissions.value.built_in_role
      permission    = permissions.value.permission
      team_id       = permissions.value.team_id
      user_id       = permissions.value.user_id
    }
  }
}

