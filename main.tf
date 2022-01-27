provider "google" {
  version = "~> 3.45.0"
  project     = var.project_id
  region      = var.region
  zone        = var.zone
}
terraform {
  required_version = ">=0.12.6"
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "3.55.0"
    }
  }
/*
  backend "gcs" {
    bucket  = "<FILL IN PROJECT ID>"
    prefix  = "terraform/state"
  }
*/
}

module "instances" {
  source	= "./modules/instances"

}

/*
module "storage" {
  source	= "./modules/storage"

}
*/

