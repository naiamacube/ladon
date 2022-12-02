# VPC and Subnets
module "vpc-host-dev" {
    source  = "terraform-google-modules/network/google"
    version = "~> 5.0"

    project_id   = module.vpc-host-dev-n3.project_id
    network_name = "vpc-host-dev"

    subnets = [
       
        {
            subnet_name           = "subnet-dev-1"
            subnet_ip             = "10.132.0.0/20"
            subnet_region         = var.gcp_region_dev_subnet_1
            subnet_private_access = true
            subnet_flow_logs      = true
            subnet_flow_logs_sampling = "0.5"
            subnet_flow_logs_metadata = "INCLUDE_ALL_METADATA"
            subnet_flow_logs_interval = "INTERVAL_10_MIN"
        },
        {
            subnet_name           = "subnet-dev-2"
            subnet_ip             = "10.156.0.0/20"
            subnet_region         = var.gcp_region_dev_subnet_2
            subnet_private_access = true
            subnet_flow_logs      = true
            subnet_flow_logs_sampling = "0.5"
            subnet_flow_logs_metadata = "INCLUDE_ALL_METADATA"
            subnet_flow_logs_interval = "INTERVAL_10_MIN"
        },
    ]
}
# Firewall Rules
resource "google_compute_firewall" "vpc-host-dev-allow-iap-rdp" {
  name      = "vpc-host-dev-allow-iap-rdp"
  network   = module.vpc-host-dev.network_name
  project   = module.vpc-host-dev-n3.project_id
  direction = "INGRESS"
  priority  = 10000

  log_config {
      metadata = "INCLUDE_ALL_METADATA"
    }

  allow {
    protocol = "tcp"
    ports    = ["3389",]
  }

  source_ranges = [
  "35.235.240.0/20",
  ]
}
resource "google_compute_firewall" "vpc-host-dev-allow-iap-ssh" {
  name      = "vpc-host-dev-allow-iap-ssh"
  network   = module.vpc-host-dev.network_name
  project   = module.vpc-host-dev-n3.project_id
  direction = "INGRESS"
  priority  = 10000

  log_config {
      metadata = "INCLUDE_ALL_METADATA"
    }

  allow {
    protocol = "tcp"
    ports    = ["22",]
  }

  source_ranges = [
  "35.235.240.0/20",
  ]
}
resource "google_compute_firewall" "vpc-host-dev-allow-icmp" {
  name      = "vpc-host-dev-allow-icmp"
  network   = module.vpc-host-dev.network_name
  project   = module.vpc-host-dev-n3.project_id
  direction = "INGRESS"
  priority  = 10000

  log_config {
      metadata = "INCLUDE_ALL_METADATA"
    }

  allow {
    protocol = "icmp"
  }

  source_ranges = [
  "10.128.0.0/9",
  ]
}
# NAT Router and config

# VPC and Subnets
module "vpc-host-stage" {
    source  = "terraform-google-modules/network/google"
    version = "~> 5.0"

    project_id   = module.vpc-host-stage-n3.project_id
    network_name = "vpc-host-stage"

    subnets = [
       
        {
            subnet_name           = "subnet-stage-1"
            subnet_ip             = "10.198.0.0/20"
            subnet_region         = var.gcp_region_stage_subnet_1
            subnet_private_access = true
            subnet_flow_logs      = true
            subnet_flow_logs_sampling = "0.5"
            subnet_flow_logs_metadata = "INCLUDE_ALL_METADATA"
            subnet_flow_logs_interval = "INTERVAL_10_MIN"
        },
        {
            subnet_name           = "subnet-stage-2"
            subnet_ip             = "10.200.0.0/20"
            subnet_region         = var.gcp_region_stage_subnet_2
            subnet_private_access = true
            subnet_flow_logs      = true
            subnet_flow_logs_sampling = "0.5"
            subnet_flow_logs_metadata = "INCLUDE_ALL_METADATA"
            subnet_flow_logs_interval = "INTERVAL_10_MIN"
        },
    ]
}
# Firewall Rules
resource "google_compute_firewall" "vpc-host-stage-allow-iap-rdp" {
  name      = "vpc-host-stage-allow-iap-rdp"
  network   = module.vpc-host-stage.network_name
  project   = module.vpc-host-stage-n3.project_id
  direction = "INGRESS"
  priority  = 10000

  log_config {
      metadata = "INCLUDE_ALL_METADATA"
    }

  allow {
    protocol = "tcp"
    ports    = ["3389",]
  }

  source_ranges = [
  "35.235.240.0/20",
  ]
}
resource "google_compute_firewall" "vpc-host-stage-allow-iap-ssh" {
  name      = "vpc-host-stage-allow-iap-ssh"
  network   = module.vpc-host-stage.network_name
  project   = module.vpc-host-stage-n3.project_id
  direction = "INGRESS"
  priority  = 10000

  log_config {
      metadata = "INCLUDE_ALL_METADATA"
    }

  allow {
    protocol = "tcp"
    ports    = ["22",]
  }

  source_ranges = [
  "35.235.240.0/20",
  ]
}
resource "google_compute_firewall" "vpc-host-stage-allow-icmp" {
  name      = "vpc-host-stage-allow-icmp"
  network   = module.vpc-host-stage.network_name
  project   = module.vpc-host-stage-n3.project_id
  direction = "INGRESS"
  priority  = 10000

  log_config {
      metadata = "INCLUDE_ALL_METADATA"
    }

  allow {
    protocol = "icmp"
  }

  source_ranges = [
  "10.128.0.0/9",
  ]
}
# NAT Router and config

# VPC and Subnets
module "vpc-host-prod" {
    source  = "terraform-google-modules/network/google"
    version = "~> 5.0"

    project_id   = module.vpc-host-prod-n3.project_id
    network_name = "vpc-host-prod"

    subnets = [
       
        {
            subnet_name           = "subnet-prod-1"
            subnet_ip             = "10.204.0.0/20"
            subnet_region         = var.gcp_region_prod_subnet_1
            subnet_private_access = true
            subnet_flow_logs      = true
            subnet_flow_logs_sampling = "0.5"
            subnet_flow_logs_metadata = "INCLUDE_ALL_METADATA"
            subnet_flow_logs_interval = "INTERVAL_10_MIN"
        },
        {
            subnet_name           = "subnet-prod-2"
            subnet_ip             = "10.172.0.0/20"
            subnet_region         = var.gcp_region_prod_subnet_2
            subnet_private_access = true
            subnet_flow_logs      = true
            subnet_flow_logs_sampling = "0.5"
            subnet_flow_logs_metadata = "INCLUDE_ALL_METADATA"
            subnet_flow_logs_interval = "INTERVAL_10_MIN"
        },
    ]
}
# Firewall Rules
resource "google_compute_firewall" "vpc-host-prod-allow-iap-rdp" {
  name      = "vpc-host-prod-allow-iap-rdp"
  network   = module.vpc-host-prod.network_name
  project   = module.vpc-host-prod-n3.project_id
  direction = "INGRESS"
  priority  = 10000

  log_config {
      metadata = "INCLUDE_ALL_METADATA"
    }

  allow {
    protocol = "tcp"
    ports    = ["3389",]
  }

  source_ranges = [
  "35.235.240.0/20",
  ]
}
resource "google_compute_firewall" "vpc-host-prod-allow-iap-ssh" {
  name      = "vpc-host-prod-allow-iap-ssh"
  network   = module.vpc-host-prod.network_name
  project   = module.vpc-host-prod-n3.project_id
  direction = "INGRESS"
  priority  = 10000

  log_config {
      metadata = "INCLUDE_ALL_METADATA"
    }

  allow {
    protocol = "tcp"
    ports    = ["22",]
  }

  source_ranges = [
  "35.235.240.0/20",
  ]
}
resource "google_compute_firewall" "vpc-host-prod-allow-icmp" {
  name      = "vpc-host-prod-allow-icmp"
  network   = module.vpc-host-prod.network_name
  project   = module.vpc-host-prod-n3.project_id
  direction = "INGRESS"
  priority  = 10000

  log_config {
      metadata = "INCLUDE_ALL_METADATA"
    }

  allow {
    protocol = "icmp"
  }

  source_ranges = [
  "10.128.0.0/9",
  ]
}
# NAT Router and config
