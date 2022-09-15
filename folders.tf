resource "google_folder" "common" {
  display_name = "Common"
  parent       = "organizations/${var.org_id}"
}

resource "google_folder" "development" {
  display_name = "Development"
  parent       = "organizations/${var.org_id}"
}

resource "google_folder" "non-production" {
  display_name = "Non-Production"
  parent       = "organizations/${var.org_id}"
}

resource "google_folder" "production" {
  display_name = "Production"
  parent       = "organizations/${var.org_id}"
}
