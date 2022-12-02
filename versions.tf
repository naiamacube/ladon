terraform {
  cloud {
    organization = "naiama"
    hostname     = "app.terraform.io"

    workspaces {
      name = "n3-ladon"
    }
  }

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = ">= 4.0.0"
    }
    random = {
      source = "hashicorp/random"
      version = "3.4.3"
    }
  }

  provider_meta "google" {
    module_name = "blueprints/terraform/exported-krm/v0.1.0"
  }

  required_version = ">=0.13"
}

provider "google" {
  credentials = var.gcp_credentials
}

provider "google-beta" {
  credentials = var.gcp_credentials
}
