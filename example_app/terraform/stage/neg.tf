resource "google_compute_region_network_endpoint_group" "cloudrun_neg" {
  name                  = local.project
  network_endpoint_type = "SERVERLESS"
  region                = local.region
  cloud_run {
    service = google_cloud_run_service.container.name
  }
}