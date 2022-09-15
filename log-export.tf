module "logsink-237438405014-logbucketsink" {
  source  = "terraform-google-modules/log-export/google"
  version = "~> 7.3.0"

  destination_uri      = module.naiama-logging-destination.destination_uri
  log_sink_name        = "237438405014-logbucketsink"
  parent_resource_id   = var.org_id
  parent_resource_type = "organization"
  include_children     = true
}

module "naiama-logging-destination" {
  source  = "terraform-google-modules/log-export/google//modules/logbucket"
  version = "~> 7.4.1"

  project_id               = module.logging-ef916-mn212.project_id
  name                     = "naiama-logging"
  location                 = "europe-west9"
  retention_days           = 365
  log_sink_writer_identity = module.logsink-237438405014-logbucketsink.writer_identity
}
