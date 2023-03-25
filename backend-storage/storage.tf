resource "google_storage_bucket" "gcs" {
  location = "EU"
  name     = local.project
}
resource "google_storage_bucket_object" "frontend" {
  name    = "frontend"
  content = "Empty dir"
  bucket  = google_storage_bucket.gcs.name
}
resource "google_storage_bucket_object" "backend" {
  name    = "backend"
  content = "Empty dir"
  bucket  = google_storage_bucket.gcs.name
}
