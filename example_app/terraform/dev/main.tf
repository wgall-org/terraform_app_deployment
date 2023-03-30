terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.26.0"
    }
  }
  backend "gcs" {

      bucket = "storage"
      prefix = "frontend/"
  }
}

provider "google" {
  project = local.projectid 
  region = local.region 
  credentials = local.creds
}

