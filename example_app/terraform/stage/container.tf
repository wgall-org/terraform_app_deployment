resource "google_cloud_run_service" "container" {
  name     = local.project
  location = local.region

  template {
    spec {
      containers {
        image = "gcr.io/${local.projectid}/${local.image}:${local.tag}"
        ports {
          protocol       = "TCP"
          container_port = 3000
        }
      }
    }


  }
  autogenerate_revision_name = true
  metadata {
    annotations = {
      "run.googleapis.com/ingress" = "internal-and-cloud-load-balancing"
    }

  }
}
data "google_iam_policy" "noauth" {
  binding {
    role = "roles/run.invoker"
    members = [
      "allUsers",
    ]
  }
}

resource "google_cloud_run_service_iam_policy" "noauth" {
  location = google_cloud_run_service.container.location
  project  = google_cloud_run_service.container.project
  service  = google_cloud_run_service.container.name

  policy_data = data.google_iam_policy.noauth.policy_data
}