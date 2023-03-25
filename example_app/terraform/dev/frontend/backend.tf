resource "google_compute_backend_service" "backend" {
  provider                        = google-beta
  name                            = var.project
  project                         = var.projectid
  enable_cdn                      = true
  connection_draining_timeout_sec = 10
  protocol                        = "HTTPS"




  backend {
    group = google_compute_region_network_endpoint_group.cloudrun_neg.id
  }

}