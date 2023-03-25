terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.26.0"
    }
  }
  backend "gcs" {

      bucket = "projects-backend"
      prefix = locals.project
  }
}

