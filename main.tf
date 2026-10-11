data "oci_psql_db_system_replicas" "psql_db_system_replicas_lookup" {
  for_each = var.psql_db_system_replicas_lookup

  db_system_id = each.value.db_system_id

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

