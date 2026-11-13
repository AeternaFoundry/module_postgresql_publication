output "publications_id" {
  description = "Map of id values across all publications, keyed the same as var.publications"
  value       = { for k, v in postgresql_publication.publications : k => v.id }
}
output "publications_all_tables" {
  description = "Map of all_tables values across all publications, keyed the same as var.publications"
  value       = { for k, v in postgresql_publication.publications : k => v.all_tables }
}
output "publications_database" {
  description = "Map of database values across all publications, keyed the same as var.publications"
  value       = { for k, v in postgresql_publication.publications : k => v.database }
}
output "publications_drop_cascade" {
  description = "Map of drop_cascade values across all publications, keyed the same as var.publications"
  value       = { for k, v in postgresql_publication.publications : k => v.drop_cascade }
}
output "publications_name" {
  description = "Map of name values across all publications, keyed the same as var.publications"
  value       = { for k, v in postgresql_publication.publications : k => v.name }
}
output "publications_owner" {
  description = "Map of owner values across all publications, keyed the same as var.publications"
  value       = { for k, v in postgresql_publication.publications : k => v.owner }
}
output "publications_publish_param" {
  description = "Map of publish_param values across all publications, keyed the same as var.publications"
  value       = { for k, v in postgresql_publication.publications : k => v.publish_param }
}
output "publications_publish_via_partition_root_param" {
  description = "Map of publish_via_partition_root_param values across all publications, keyed the same as var.publications"
  value       = { for k, v in postgresql_publication.publications : k => v.publish_via_partition_root_param }
}
output "publications_tables" {
  description = "Map of tables values across all publications, keyed the same as var.publications"
  value       = { for k, v in postgresql_publication.publications : k => v.tables }
}

