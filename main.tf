terraform {
  backend "gcs" {
    bucket  = "tf-state-stable-terminus-480605"
    prefix  = "terraform/state"
  }
}

provider "google" {
  project = var.project_id
  region  = var.region
}

resource "google_storage_bucket" "demo_bucket" {
  name     = "debdutt-terraform-demo-12345"
  location = "ASIA-SOUTH1"
}