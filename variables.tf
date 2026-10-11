variable "data_source_permissions" {
  description = <<EOT
Map of data_source_permissions, attributes below
Required:
    - datasource_uid
Optional:
    - datasource_type
    - org_id
    - permissions (block):
        - built_in_role (optional)
        - permission (required)
        - team_id (optional)
        - user_id (optional)
EOT

  type = map(object({
    datasource_uid  = string
    datasource_type = optional(string)
    org_id          = optional(string)
    permissions = optional(list(object({
      built_in_role = optional(string)
      permission    = string
      team_id       = optional(string)
      user_id       = optional(string)
    })))
  }))
}

