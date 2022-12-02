module "organization-iam" {
  source  = "terraform-google-modules/iam/google//modules/organizations_iam"
  version = "~> 7.4"

  organizations = [var.gcp_organization_id]

  bindings = {
    
    "roles/billing.admin" = [
      "group:gcp-billing-admins@naiama.com",
    ]
    
    "roles/resourcemanager.organizationAdmin" = [
      "group:gcp-organization-admins@naiama.com",
    ]
    
  }
}


module "development-iam" {
  source  = "terraform-google-modules/iam/google//modules/folders_iam"
  version = "~> 7.4"

  folders = [google_folder.development.name]

  bindings = {
    
    "roles/compute.instanceAdmin.v1" = [
      "group:gcp-developers@naiama.com",
    ]
    
    "roles/container.admin" = [
      "group:gcp-developers@naiama.com",
    ]
    
  }
}


module "stage-iam" {
  source  = "terraform-google-modules/iam/google//modules/folders_iam"
  version = "~> 7.4"

  folders = [google_folder.stage.name]

  bindings = {
    
    "roles/compute.instanceAdmin.v1" = [
      "group:gcp-developers@naiama.com",
    ]
    
    "roles/container.admin" = [
      "group:gcp-developers@naiama.com",
    ]
    
  }
}
