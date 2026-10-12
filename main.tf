resource "postgresql_publication" "publications" {
  for_each = var.publications

  name                             = each.value.name
  all_tables                       = each.value.all_tables
  database                         = each.value.database
  drop_cascade                     = each.value.drop_cascade
  owner                            = each.value.owner
  publish_param                    = each.value.publish_param
  publish_via_partition_root_param = each.value.publish_via_partition_root_param
  tables                           = each.value.tables
}

