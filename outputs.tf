output "psql_db_system_replicas_lookup_id" {
  description = "Map of id values across all psql_db_system_replicas_lookup, keyed the same as var.psql_db_system_replicas_lookup except keys with no id are omitted"
  value       = { for k, v in data.oci_psql_db_system_replicas.psql_db_system_replicas_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "psql_db_system_replicas_lookup_db_system_id" {
  description = "Map of db_system_id values across all psql_db_system_replicas_lookup, keyed the same as var.psql_db_system_replicas_lookup except keys with no db_system_id are omitted"
  value       = { for k, v in data.oci_psql_db_system_replicas.psql_db_system_replicas_lookup : k => v.db_system_id if v.db_system_id != null && length(v.db_system_id) > 0 }
}
output "psql_db_system_replicas_lookup_db_system_replica_collection" {
  description = "Map of db_system_replica_collection values across all psql_db_system_replicas_lookup, keyed the same as var.psql_db_system_replicas_lookup except keys with no db_system_replica_collection are omitted"
  value       = { for k, v in data.oci_psql_db_system_replicas.psql_db_system_replicas_lookup : k => v.db_system_replica_collection if v.db_system_replica_collection != null && length(v.db_system_replica_collection) > 0 }
}
output "psql_db_system_replicas_lookup_filter" {
  description = "Map of filter values across all psql_db_system_replicas_lookup, keyed the same as var.psql_db_system_replicas_lookup except keys with no filter are omitted"
  value       = { for k, v in data.oci_psql_db_system_replicas.psql_db_system_replicas_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}

