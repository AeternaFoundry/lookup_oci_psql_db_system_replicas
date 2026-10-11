variable "psql_db_system_replicas_lookup" {
  description = <<EOT
Map of psql_db_system_replicas_lookup, attributes below
Required:
    - db_system_id
Optional:
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    db_system_id = string
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

