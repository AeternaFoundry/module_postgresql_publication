variable "publications" {
  description = <<EOT
Map of publications, attributes below
Required:
    - name
Optional:
    - all_tables
    - database
    - drop_cascade
    - owner
    - publish_param
    - publish_via_partition_root_param
    - tables
EOT

  type = map(object({
    name                             = string
    all_tables                       = optional(bool)
    database                         = optional(string)
    drop_cascade                     = optional(bool)
    owner                            = optional(string)
    publish_param                    = optional(list(string))
    publish_via_partition_root_param = optional(bool)
    tables                           = optional(set(string))
  }))
  # Note: 2 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

