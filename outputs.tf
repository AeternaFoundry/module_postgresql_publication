output "publications_id" {
  description = "Map of id values across all publications, keyed the same as var.publications except keys with no id are omitted"
  value       = { for k, v in postgresql_publication.publications : k => v.id if v.id != null && length(v.id) > 0 }
}
output "publications_all_tables" {
  description = "Map of all_tables values across all publications, keyed the same as var.publications except keys with no all_tables are omitted"
  value       = { for k, v in postgresql_publication.publications : k => v.all_tables if v.all_tables != null }
}
output "publications_database" {
  description = "Map of database values across all publications, keyed the same as var.publications except keys with no database are omitted"
  value       = { for k, v in postgresql_publication.publications : k => v.database if v.database != null && length(v.database) > 0 }
}
output "publications_drop_cascade" {
  description = "Map of drop_cascade values across all publications, keyed the same as var.publications except keys with no drop_cascade are omitted"
  value       = { for k, v in postgresql_publication.publications : k => v.drop_cascade if v.drop_cascade != null }
}
output "publications_name" {
  description = "Map of name values across all publications, keyed the same as var.publications except keys with no name are omitted"
  value       = { for k, v in postgresql_publication.publications : k => v.name if v.name != null && length(v.name) > 0 }
}
output "publications_owner" {
  description = "Map of owner values across all publications, keyed the same as var.publications except keys with no owner are omitted"
  value       = { for k, v in postgresql_publication.publications : k => v.owner if v.owner != null && length(v.owner) > 0 }
}
output "publications_publish_param" {
  description = "Map of publish_param values across all publications, keyed the same as var.publications except keys with no publish_param are omitted"
  value       = { for k, v in postgresql_publication.publications : k => v.publish_param if v.publish_param != null && length(v.publish_param) > 0 }
}
output "publications_publish_via_partition_root_param" {
  description = "Map of publish_via_partition_root_param values across all publications, keyed the same as var.publications except keys with no publish_via_partition_root_param are omitted"
  value       = { for k, v in postgresql_publication.publications : k => v.publish_via_partition_root_param if v.publish_via_partition_root_param != null }
}
output "publications_tables" {
  description = "Map of tables values across all publications, keyed the same as var.publications except keys with no tables are omitted"
  value       = { for k, v in postgresql_publication.publications : k => v.tables if v.tables != null && length(v.tables) > 0 }
}

