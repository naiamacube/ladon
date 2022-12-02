resource "google_folder" "common" {
  display_name = "common"
  parent       = "organizations/${var.gcp_organization_id}"
}

resource "google_folder" "development" {
  display_name = "development"
  parent       = "organizations/${var.gcp_organization_id}"
}

resource "google_folder" "stage" {
  display_name = "stage"
  parent       = "organizations/${var.gcp_organization_id}"
}

resource "google_folder" "production" {
  display_name = "production"
  parent       = "organizations/${var.gcp_organization_id}"
}
