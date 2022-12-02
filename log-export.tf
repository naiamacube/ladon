module "logsink-naiama-logbucketsink" {
  source  = "terraform-google-modules/log-export/google"
  version = "~> 7.3.0"

  destination_uri      = module.naiama-logging-destination.destination_uri
  log_sink_name        = "naiama-logbucketsink"
  parent_resource_id   = var.gcp_organization_id
  parent_resource_type = "organization"
  include_children     = true
}

module "naiama-logging-destination" {
  source  = "terraform-google-modules/log-export/google//modules/logbucket"
  version = "~> 7.4.1"

  project_id               = module.logging-n3.keepers.project_id
  name                     = "naiama-logging"
  location                 = var.gcp_region_logging
  retention_days           = 365
  log_sink_writer_identity = module.logsink-naiama-logbucketsink.writer_identity
}
