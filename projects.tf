resource "random_id" "main" {
  byte_length = 8
}

module "logging-n3" {
  source  = "terraform-google-modules/project-factory/google"
  version = "~> 12.0"

  name       = "logging"
  project_id = "logging-n3-${random_id.main.hex}"
  org_id     = var.gcp_organization_id
  folder_id  = google_folder.common.name

  billing_account = var.gcp_billing_id
}

module "monitoring-dev-n3" {
  source  = "terraform-google-modules/project-factory/google"
  version = "~> 12.0"

  name       = "monitoring-dev"
  project_id = "monitoring-dev-n3-${random_id.main.hex}"
  org_id     = var.gcp_organization_id
  folder_id  = google_folder.common.name

  billing_account = var.gcp_billing_id
}

module "monitoring-stage-n3" {
  source  = "terraform-google-modules/project-factory/google"
  version = "~> 12.0"

  name       = "monitoring-stage"
  project_id = "monitoring-stage-n3-${random_id.main.hex}"
  org_id     = var.gcp_organization_id
  folder_id  = google_folder.common.name

  billing_account = var.gcp_billing_id
}

module "monitoring-prod-n3" {
  source  = "terraform-google-modules/project-factory/google"
  version = "~> 12.0"

  name       = "monitoring-prod"
  project_id = "monitoring-prod-n3-${random_id.main.hex}"
  org_id     = var.gcp_organization_id
  folder_id  = google_folder.common.name

  billing_account = var.gcp_billing_id
}

module "vpc-host-dev-n3" {
  source  = "terraform-google-modules/project-factory/google"
  version = "~> 12.0"

  name       = "vpc-host-dev"
  project_id = "vpc-host-dev-n3-${random_id.main.hex}"
  org_id     = var.gcp_organization_id
  folder_id  = google_folder.common.name

  billing_account = var.gcp_billing_id
}

module "vpc-host-stage-n3" {
  source  = "terraform-google-modules/project-factory/google"
  version = "~> 12.0"

  name       = "vpc-host-stage"
  project_id = "vpc-host-stage-n3-${random_id.main.hex}"
  org_id     = var.gcp_organization_id
  folder_id  = google_folder.common.name

  billing_account = var.gcp_billing_id
}

module "vpc-host-prod-n3" {
  source  = "terraform-google-modules/project-factory/google"
  version = "~> 12.0"

  name       = "vpc-host-prod"
  project_id = "vpc-host-prod-n3-${random_id.main.hex}"
  org_id     = var.gcp_organization_id
  folder_id  = google_folder.common.name

  billing_account = var.gcp_billing_id
}
